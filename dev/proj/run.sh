#!/usr/bin/env bash
set -o errexit
set -o pipefail
# set -o nounset

dir=$(dirname "$0")
build_cmd=$(cat << BUILD
docker build \
    \$(
        src="$dir/docker/Dockerfile"; 
        cat \$src | 
        sed -nE "s/^[[:space:]]*ARG[[:space:]]+([[:alnum:]_]+)(=.+)?$/--build-arg \1/p"
    ) \
    -t "\$tag" \
    -f "$dir/docker/Dockerfile" "$dir/docker"
BUILD
)

env_src=("$dir/../../.env")
mapfile -t env_defs_from_src < <( cat "${env_src[@]}" | grep -v '#' | grep -v '^[[:space:]]*$' )
mapfile -t env_names_from_src < <( cat "${env_src[@]}" | grep -v '#' | grep -v '^[[:space:]]*$' | sed -nE -r 's/^([^=]+)=(.*)$/\1/p' )
declare -A env_map_of_user_defined
for e in ${env_names_from_src[@]}; do
    val=$(bash -c 'echo $'$e)
    if [[ $val ]]; then
        env_map_of_user_defined[$e]=$val
    fi
done
env_defs_from_src_to_be_used=()
for def in ${env_defs_from_src[@]}; do
    env_name="${def%%=*}"
    if [[ ! "${env_map_of_user_defined[$env_name]}" ]]; then
        env_defs_from_src_to_be_used+=( "$def" )
    fi
done
env "${env_defs_from_src_to_be_used[@]}" bash -c '
    set -o errexit
    set -o pipefail
    set -o nounset

    # >> env
    export PROJ_PORT=${BW_FOVSFE_PROJ_PORT:-8888}
    # export REPO_USER_PASS=${BW_RUST_DOC_REPO_USER_PASS} 
    # export REPO_BRANCH=${BW_RUST_DOC_REPO_BRANCH} 
    # export REPO_HOST=${BW_RUST_DOC_REPO_HOST} 
    # export UPDATE_DELTA_SECS=${BW_RUST_DOC_UPDATE_DELTA_SECS} 
    # export CMD_TIMEOUT_SECS=${BW_RUST_DOC_CMD_TIMEOUT_SECS} 
    # export APP_ROOT=${BW_RUST_DOC_APP_ROOT} 
    # << env
    mapfile -t envs < <(sed -nE "/^[[:space:]]*# >> env/,/^[[:space:]]*# << env/p" "'$0'" | sed -nE -r "s/^[[:space:]]*export[[:space:]]*([^=]*)=(.*)\$/\\1/p")

    service=$(cd "'$dir'" && basename $(pwd))
    tag="bazawinner/${BW_PROJ_NAME}-${service}-dev"
    name="${BW_PROJ_NAME}_${service}_dev"

    function usage(){
        cat << USAGE >&2
    Description:
        run docker container "$name" 
    Usage:
        '$0' [--help | -it --reset ]
    Options:
        --help      this help
        -it         pass -it option to "docker run"
        -n | --no-open   don"t open in browser http:/$HOSTNAME:$PROJ_PORT/$APP_ROOT
    Note: env vars to set are inside "'$0'"
USAGE
        exit 1
    }

    function echoerr() { 
        echo "ERR: $*" 1>&2 
    }

    opt_reset=0
    opt_it=0
    opt_open_no=0
    # process arguments
    while [[ $# -gt 0 ]]
    do
        case "$1" in

            --help)
                usage
            ;;

            -r | --reset )
                opt_reset=1
                shift 1
            ;;

            -n | --no-open )
                opt_open_no=1
                shift 1
            ;;

            -it )
                opt_it=1
                shift 1
            ;;

            -* )
                echoerr "Unknown option: $1"
                usage
            ;;

            *)
                echoerr "Unknown arg: $1"
                usage
            ;;
        esac
    done

    echo Building $tag . . .
    echo '"$build_cmd"'
    '"$build_cmd"' 

    if [[ $(docker ps --format "table {{.Names}}" | grep -x "$name") ]]; then
        echo "docker container stop \"$name\" . . ."
        docker container stop  "$name"
    fi
    if [[ $(docker ps -a --format "table {{.Names}}" | grep -x "$name") ]]; then
        echo "docker container rm \"$name\" . . ."
        docker container rm  "$name" 
    fi

    echo Running $name . . .
    args=(\
        # -m 4096m
        -p ${PROJ_PORT}:8888 \
        --name "$name" \
        --mount "type=bind,src=$(pwd)/'$dir'/../..,dst=/home/jovyan/work" \
    )
    for e in "${envs[@]}"; do
        args+=( -e "$e=$(bash -c "echo \$"$e )" )
    done
    if [[ "$opt_it" == 1 ]]; then
        args+=( -it )
    else
        args+=( -d )
    fi
    args+=( $tag )
    echo ${args[@]}

    echo docker run "${args[@]}"
    docker run "${args[@]}" 

    sleep 3
    docker logs fovsfe_proj_dev 2>&1 | tail -1
    token=$(docker logs fovsfe_proj_dev 2>&1 | sed -nE "s/^[[:space:]]+or http:\\/\\/127\\.0\\.0\\.1:8888\\/\\?token=//p")
    echo token: $token

    url="http://$HOSTNAME:$PROJ_PORT/?token=$token"
    echo OK: service available at $url
    if [[ "$opt_open_no" == 0 ]]; then
        sleep 2
        xdg-open "$url" &
        sleep 1
    fi
' -- "$@"


