# enums README

dart 2.17 新用法

- [Dart Enhanced Enum Classes stackoverflow](https://stackoverflow.com/a/71412047)
- [feature-specification](https://github.com/dart-lang/language/blob/d16704ae6c9a5fd8f30b7ba9d33a5ab650c7447d/accepted/future-releases/enhanced-enums/feature-specification.md)

### 取值
```dart
enum GameNum {
  gg,
  unknown,
}

GameNum? targetIndex;
  GameNum.values.asMap().forEach((index, name) => {
    targetIndex = GameNum.values[index]
    // print(${GameNum.values[index].index}, ${GameNum.values[index].name}')
  });
  // print('targetIndex $targetIndex');
  switch (targetIndex) {
    case GameNum.gg:
      print('gg');
      break;
    case GameNum.unknown:
      print('unknown');
      break;
    default:
  }
```
