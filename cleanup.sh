#!/bin/bash

if [ -f .targets ] ; then
    for target in $(cat .targets); do
        if [[ "${TARGETS}" != *"${target}"* ]]; then
            if [ -e ${target} ]; then
                echo "Removing dangling target ${target}" >&2
                rm ${target}
            fi
        fi
    done
fi
echo "${TARGETS}"  > .targets
