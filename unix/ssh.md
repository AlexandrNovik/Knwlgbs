
**[Configure SSH and two-step verification](https://support.atlassian.com/bitbucket-cloud/docs/set-up-additional-ssh-keys/)**

```bash
pbcopy < ~/.ssh/id_rsa.pub
```


## Add another ssh key
```bash
ssh-add -K ~/.ssh/ar_cloud
~/.ssh/config
```
Host bitbucket.org
HostName bitbucket.org
  User ar_cloud
  IdentityFile ~/.ssh/ar_cloud
  IdentitiesOnly yes
Host *
UseKeychain yes