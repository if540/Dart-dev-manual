# Classes 類

## implements、extends、with


## @override

@override 預設選填，LINT 會提示所有繼承來的方法都要寫 `@override`。

下面情況禁止覆寫:

- DON'T override fields.
  ```dart
  @override
  final String? food = 'banana'; // DON'T override fields.
  ```

### Classes（[Implicit interfaces](https://dart.dev/guides/language/language-tour#implicit-interfaces)）

在 dart 中，每一個類都為隱式介面(Interface)，通過 implements 在句中聲明實作，可複數。

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

### [Interface 實作](https://dart.dev/guides/language/language-tour#implicit-interfaces)

所有介面 fields、方法都要實作，除構造函式。

複數實作

```dart
class Point implements Comparable, Location {...}
```

### Mixin(混合)

- mixin 沒有構造函式(constructor), [with 聲明會報錯](https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=mixin_class_declares_constructor#mixin_class_declares_constructor)
  ```dart
  mixin A {}
  class B with A {}
  ```
- class 移除構造函式，一樣可以使用 with 來 mixin
  ```dart
  class A {}
  class B with A {}
  ```
