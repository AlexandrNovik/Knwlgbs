+ alias 'appcenter=node /Users/jenkins/appcenter-cli/node_modules/appcenter-cli/bin/appcenter.js'  
+ node /Users/jenkins/appcenter-cli/node_modules/appcenter-cli/bin/appcenter.js login --token d42ef967d2361a0b24b13e5770c223706d93470f  
Error: Could not add password to keychain: security: SecKeychainItemCreateFromContent (<default>): User interaction is not allowed.

**[issue](https://github.com/microsoft/appcenter/issues/1210)**

```bash
security unlock-keychain /Users/xxxx/Library/Keychains/login.keychain-db
```