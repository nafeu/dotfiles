$EDITOR `echo $(git diff --name-only HEAD~ HEAD) $(git status --porcelain | awk '{print $2}')`
