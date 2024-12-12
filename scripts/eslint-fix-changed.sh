echo applying eslint fixes to:
git --no-pager diff --name-only | grep '\.js$'
npx eslint --fix `git --no-pager diff --name-only | grep '\.js$'`
