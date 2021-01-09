#!/bin/bash

set -e

eval "$(ssh-agent)"
ssh-add <(echo "$DEPLOY_KEY")

rsync -avz --delete -e 'ssh -o StrictHostKeyChecking=no' "${GITHUB_WORKSPACE}/_site/" "$1"
