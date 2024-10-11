function current_activity --wraps='adb shell "dumpsys activity activities | grep mResumedActivity"' --wraps='adb shell "dumpsys activity activities | grep topResumedActivity"' --description 'alias current_activity=adb shell "dumpsys activity activities | grep topResumedActivity"'
  adb shell "dumpsys activity activities | grep topResumedActivity" $argv        
end
