
## Install apk
```bash
adb install /Users/alexandnovik/Work/android/app/release/app-armeabi-v7a-release.apk
```

## Logcat Filter
```bash
adb logcat
```
```reqexp
^(?!.*(DataRouter|Process))
```