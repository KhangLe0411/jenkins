#!/bin/bash
export __currentDir=$(dirname "${0}")
source "${__currentDir}/../../utils/functions-new.sh"

function main(){
    init_environment

    declare -A fields(\
        ["sourceDir"]="${__sourceDir}" \
        ["gitURL"]="${__gitURL}" \
        ["inputBranch"]="${inputBrnach}"
    )

    on_proxy
    git_code
}

main