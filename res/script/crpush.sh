#!/bin/bash
LOCAL_BRANCHE_NAME=$(git rev-parse --abbrev-ref HEAD)
echo "push local_branch for code review: ${LOCAL_BRANCHE_NAME}"
git push origin $LOCAL_BRANCHE_NAME:refs/for/$LOCAL_BRANCHE_NAME
