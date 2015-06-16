#!/bin/sh

file_pattern=*.ext
cred_pattern=foo|bar
replace_pattern=s/foo/bort/g;s/bar/baz/g;
revs=master..branch_name

git filter-branch --tree-filter "egrep -r '$cred_pattern' * || true" -- $revs

git filter-branch --tree-filter "find . -type f -name '$file_pattern' -exec egrep '$cred_pattern' {} \; -exec sed -i '' -e '$replace_pattern' {} \;" -- $revs

git filter-branch --tree-filter "egrep -r '$cred_pattern' * || true" -- $revs
