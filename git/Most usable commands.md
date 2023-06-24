Update remotes
```bash
git remote update origin --prune
```
Undoing the Last Commit
```bash
git reset --soft HEAD~1
```
Push rollback changes
```bash
git checkout <file>
```
Push tag
```bash
git tag <tag_name> <commit_sha>
```
Push tag
```bash
git push origin android-1.0.1
```
Update submodule
```bash
git submodule update --init --recursive
```
Change origin url
```shell
git remote set-url origin https://git-repo/new-repository.git
```