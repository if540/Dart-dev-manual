# dart:core Duration class

> Durations are context independent.
> 
> 中譯: 持續時間與上下文無關。


### CONSTRUCTORS

通過構造函式建立新的持續時間
```dart
Duration zero = const Duration(seconds: 0);

/// int days = 0,
/// int hours = 0,
/// int minutes = 0,
/// int seconds = 0,
/// int milliseconds = 0,
/// int microseconds = 0
```

### CONSTANTS

通過常數取得 0 秒無時間
```dart
Duration zero = Duration.zero;
/// 等同 Duration(seconds: 0)
```

學習資源:
- [Duration class](https://api.dart.dev/stable/2.12.4/dart-core/Duration-class.html)
- [Flutter Duration詳細概述](https://juejin.cn/post/6908641651997016077)
