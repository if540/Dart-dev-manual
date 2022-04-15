# Classes 類

## 重點整理

- 每一個類都是[隱式介面](https://dart.dev/guides/language/language-tour#implicit-interfaces)
- mixin, class, abstract class 都可以被實作
- implements 所有 fields、方法(除了constructor) 都需 @override 覆寫實作
- implements、with 可引用複數 `class Point implements Comparable, Location {...}`
- extends 只能引用單數
- extends、with 不能 @override fields
- mixin 沒有 constructor、可寫抽象方法、有先後順序(後面會覆蓋前面)
- class 移除 constructor 可被 with  引用
- 抽象類`不能實例化`、可寫抽象方法
- @override 預設選填，使用 LINT 則建議加 `@override`。

**學習文章:**

- [從零開始的Flutter世界系列 - (六) 抽象類別、介面、混合類別](https://ithelp.ithome.com.tw/articles/10242009)

### Classes

在 dart 中，每一個類都為隱式介面(Interface)

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

- 不能實例化
  ```dart
  abstract class Person {}
  Person peopleOne = Person(); // ERROR: Abstract classes can’t be instantiated.
  ```
- 抽象方法
  ```dart
  void updateChildren(); // CAN: none method body
  ```

### Mixin(混合)

mixin [沒有構造函式 constructor](https://dart.dev/tools/diagnostic-messages?utm_source=dartdev&utm_medium=redir&utm_id=diagcode&utm_content=mixin_class_declares_constructor#mixin_class_declares_constructor)

```dart
mixin A {}
class B {} // class 移除構造函式，可被 with 引用
class C with A, B {}
```

mixin on 限制使用, 不能對實作對象自身使用，ex: 不能 on Man

```dart
class Master {
  void eat() {}
}
mixin Fight on Master {
  void shoot();
}
class Man extends Master with Fight {}
```
