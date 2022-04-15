# Classes 類

**重點整理:**

- 每一個類都是介面
- mixin, class, abstract class 都可以被實作
- implements 必需實作介面所有fields、方法(除了constructor)
- mixin 沒有 constructor
- class 移除 constructor 就可以被 with
- 抽象類才可以寫抽象方法

## implements、extends(擴展)、with


## @override

@override 預設選填，LINT 會提示所有繼承來的方法都要寫 `@override`。

下面情況禁止覆寫:

- DON'T override fields. (extends、with)
  ```dart
  @override
  final String? food = 'banana'; // DON'T override fields.
  ```

### Classes（[Implicit interfaces](https://dart.dev/guides/language/language-tour#implicit-interfaces)）

在 dart 中，每一個類都為隱式介面(Interface)，通過 implements 在句中聲明實作，可複數。

**super** [引用父類](https://dart.dev/guides/language/language-tour#extending-a-class)
```
class B extends A {
  @override
  void eatFood() {
    super.eatFood(); // 引用父類A方法
    // override 必需實作，否則會報錯
  }
}
```

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
