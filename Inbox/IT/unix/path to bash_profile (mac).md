## Add platform-tools to your path (bash_profile) 
```bash
echo export "ANDROID_HOME=/Users/yourName/Library/Android/sdk" >> ~/.bash_profile
```

Refresh your bash profile: 
```bash
source ~/.bash_profile
```
 
Start using platform-tools:
```bash
adb devices
 ```

## Add by edit bash_profile:
```bash
nano ~/.bash_profile 
```

Add lines:
```bash
export ANDROID_HOME=/Users/<username>/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator
```

Reopen terminal and check if it worked:
```bash
source ~/.bash_profile
echo $ANDROID_HOME
```