// Lazily Initialization
class Singleton {
  static Singleton _instance;
  Singleton._internal() {
    someMethod();
  }
  factory Singleton() => _instance ??= Singleton._internal();

  void someMethod() {
    print("IO Singleton Called");
  }
}
