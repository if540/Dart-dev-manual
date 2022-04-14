# Troubleshooting-1-1 uncategorized

錯誤排除

- Uncaught Error: Bad state: No element
  ```dart
  List messages = [];
  print(messages.last);
  ```
  
- [This class is marked as '@immutable'](https://stackoverflow.com/a/57929523)
- [web] mobile cookie not work
  - use [js-cookie](https://github.com/js-cookie/js-cookie)
  - https://stackoverflow.com/a/56591766
- [web] Fixing `Caught error: Unsupported operation: Platform._operatingSystem`
  - [web 已知問題](http://blog.wafrat.com/fixing-caught-error-unsupported-operation-platform-_operatingsystem/)
  ```dart
  import 'package:flutter/foundation.dart' show kIsWeb;
  
  // The fix is to use their kIsWeb constant workaround:
  if (!kIsWeb && Platform.isAndroid) {
    // ...
  }
  ```

- Prefer typing uninitialized variables and fields. (prefer_typing_uninitialized_variables
  - As you are not instantiating while declaring variables, it is often good practice to declare type beforehand.（由於您在聲明變量時沒有實例化，因此事先聲明類型通常是一種好習慣。）
  ```dart
  var client; // warning
  dynamic client; // good
  ```

- LateInitializationError: Field 'data' has not been initialized, got error
  - [late data has not been initialized](https://stackoverflow.com/questions/67401385/lateinitializationerror-field-data-has-not-been-initialized-got-error)
  
  ```dart
  late MyData data; // error
  ```
  Just change to
  ```dart
  MyData? data;
  ```

- The default value of an optional parameter must be constant.dartnon_constant_default_value
  - 可選參數的默認值必須是常量
  - [non_constant_default_value](https://dart.dev/tools/diagnostic-messages#non_constant_default_value)
  ```dart
  {Key? key, required this.rivePath, this.stateMachine = const []}
  ```

- style: Prefer const literals as parameters of constructors on @immutable classes.dartprefer_const_literals_to_create_immutables
  - Prefer const with constant constructors.dartprefer_const_constructors
  - 多子級 widget 陣列被建議加上 const
  - [prefer_const_literals_to_create_immutables](https://dart-lang.github.io/linter/lints/prefer_const_literals_to_create_immutables.html)
  ```dart
    Column(
      children: const [
        RivCard(
          rivePath: 'assets/animations/glowing-flower.riv',
        );
      ],
    ),
  ```

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
