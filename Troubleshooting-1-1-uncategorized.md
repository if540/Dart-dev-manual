# Troubleshooting-1-1 uncategorized

錯誤排除

- Error: NoSuchMethodError: 'data' method not found
  - 操作對像上沒有 data 方法，換句話說就是你操作的對像型別可能跟你想像的不一樣
  - Dart language 裡 Map, List... 沒有 `user.name` 點取值的用法
  - Dart language 僅能在 class 上使用 `user.name`，像是 static, method, get... 
  - [Static types and dynamic](https://dart.dev/guides/language/extension-methods#static-types-and-dynamic)
  
NoSuchMethodError: ido package 案例
  - post 返回的是 `Future<Response>` 類型，如果跳過它就必需注意取值的方法要改變，或是模擬 ido 取值型別 `Response`
  ```dart
  // 如此一來就可以依舊使用 response.data 接值
  Future<Response> getUserList() async {
    var response = {
      "code": 200,
      "success": true,
      "data": [
        {
          "member_id": 999,
          "nickname": "安安",
        }
      ],
      "message": "ok"
    };
    var res = Response(statusCode: 200, data: json.encode(response));
    return res;
  }
  ```
  ```dart
  Future.delayed(Duration(seconds: 1), () async {
    return _api.getUserList();
  }).then((response) {
    if (response.statusCode == 200) {
      userListResponse = userListModelFromJson(response.data);
    }
    // ...
  });
  ```
