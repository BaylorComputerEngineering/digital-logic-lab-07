#! /bin/bash

UPSTREAM_REPO=https://github.com/BaylorComputerEngineering/digital-logic-lab-07.git
if ! [ -z "${UPSTREAM_REPO}" ]; then
    git remote add update ${UPSTREAM_REPO} 2>/dev/null
    git stash
    git pull --rebase update master
    git pull --rebase origin master
    git push -u origin master
    git stash pop
else
    echo "Error: need to specify a UPSTREAM_REPO, UPSTREAM_REPO is empty".
    exit 1
fi

