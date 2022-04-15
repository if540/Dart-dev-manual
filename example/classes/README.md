# Classes 類

## implements、extends、with


## @override

@override 預設選填，LINT 會提示所有繼承來的方法都要寫 `@override`。

除了下面情況禁止覆寫:

- DON'T override fields.
  ```dart
  @override
  final String? food = 'banana'; // DON'T override fields.
  ```

### Classes（[Implicit interfaces](https://dart.dev/guides/language/language-tour#implicit-interfaces)）

在 dart 中，每一個類都為隱式介面，通過 implements

### Abstract classes

- 抽象類，不能實體化
  ```dart
  abstract class Person {}
  Person peopleOne = Person(); // ERROR: Abstract classes can’t be instantiated.
  ```
- 可以有抽象方法
  ```dart
  // CAN: none method body
  void updateChildren();
  // CAN: method body
  void updateChildren() {};
  ```

### Interface

### Mixin
