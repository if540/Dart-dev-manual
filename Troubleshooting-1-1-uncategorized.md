# Troubleshooting-1-1 uncategorized

錯誤排除

- Error: NoSuchMethodError: 'data' method not found
  - 操作對像上沒有 data 方法，換句話說就是你操作的對像型別可能跟你想像的不一樣
  - Dart language 裡 Map, List... 沒有 `user.name` 點取值的用法
  - Dart language 僅能在 class 上使用 `user.name`，像是 static, method, get... 
