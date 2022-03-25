# Readme

- [單例多種寫法](https://medium.com/flutterworld/flutter-dart-design-pattern-singleton-c63be89c0b75)


```dart
// 變形用法驗證案例
class Singleton {
  static Singleton? _instance = Singleton._internal();
  
  Singleton._internal() {
    someMethod(1);
  }
  
  Singleton._internal2() {
    someMethod(2);
  }
  
  factory Singleton() => _instance ??= Singleton._internal2();

  void someMethod(value) {
    print("Singleton html Called - $value");
  }
}
```
