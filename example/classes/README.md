# Classes 類

## 

### abstract classes

- 抽象類，不能實體化
  ```dart
  abstract class Person {}
  Person peopleOne = Person(); // error: Abstract classes can’t be instantiated.
  ```
- 可以有抽象方法
  ```dart
  // can: none method body
  void updateChildren();
  // can: method body
  void updateChildren() {};
  ```
