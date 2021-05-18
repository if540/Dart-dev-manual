# Troubleshooting-1-1 uncategorized

錯誤排除

- Error: NoSuchMethodError: 'data' method not found
  - Dart language 裡 Map, List... 沒有 `user.name` 點取值的用法
  - Dart language 僅能在 class 上使用 `user.name`，像是 static, method, get... 
