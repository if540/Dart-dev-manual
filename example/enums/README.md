# enums README

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
