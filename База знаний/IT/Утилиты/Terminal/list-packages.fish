function list-packages
  #vadimvolk
  adb shell pm list packages | string replace -r 'package:' ''
end