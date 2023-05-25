Update remotes
git remote update origin --prune

Undoing the Last Commit
git reset --soft HEAD~1

Push rollback changes
git checkout <file>

Push tag
git tag <tag_name> <commit_sha>

Push tag
git push origin android-1.0.1

Update submodule
git submodule update --init --recursive