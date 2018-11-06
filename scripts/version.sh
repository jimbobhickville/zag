#!/bin/bash
export MESSAGE=$(echo -e "\n\n$(git log `git describe --tags --abbrev=0`..HEAD --oneline)")
bumpversion \
--message 'Bump version: {current_version} → {new_version}{$MESSAGE}' \
${@:1}
