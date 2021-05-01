# dart:async Future<T> class and async function
  
## Async function
實際範例:
```dart
Future getUserInfo() async {
  var res = await _api.user();
  return res;
}
```
模擬資料回傳:
```dart
Future getUserInfo() async {
  return {"name": "flutter"};
}
```

學習資源:
- [異步支持 (Asynchrony support)](https://dart.cn/guides/language/language-tour#asynchrony-support)
- [聲明異步函數](https://dart.cn/guides/language/language-tour#declaring-async-functions)

## Future

### Basic Future
```dart
// 接續 sync function 範例
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
- [異步編程：使用 Future 和 async-await](https://dart.cn/tutorials/language/futures)
