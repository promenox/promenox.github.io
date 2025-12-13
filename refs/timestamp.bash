#!/bin/bash

git_last_commit_date="$(git log -1 --format=%cd)"

# html_files="$(find . -type f -name "*.html")"
index="$(find . -type f -name "index.html")"

sed -i "" "s|<span id=\"git-last-commit-date\">*</span>|<span id=\"git-last-commit-date\">$git_last_commit_date</span>|g" "$index"