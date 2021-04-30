# dart:async Future<T> class
  
### Basic Future
```dart
Future getUserInfo() async {
  return {"name": "flutter"};
}

var userInfoFetch = getUserInfo();

userInfoFetch.then((res) {
  // do something
}).catchError((error) => print(error));
```

### Simple Future
```dart
var future = Future.value(1);
print(future);
//Instance of 'Future<int>'
```

#### delayed
```dart
Future.delayed(Duration(seconds: 1), () async {
  // computation
  return 'computation pass.';
}).then((value) {
  print('value go from computation: $value');
});
```

學習資源:
- [電腦科學中的 future 與 promise 的不同](https://zh.wikipedia.org/wiki/Future%E4%B8%8Epromise)
- [Future class](https://api.dart.dev/stable/2.12.4/dart-async/Future-class.html)
- [Flutter篇之你真的會使用Future嗎？](https://juejin.cn/post/6844903893403451405)
