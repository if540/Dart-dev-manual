# Dart 構造函式研究

[dartpad](https://dartpad.dev/)

[quicktype](https://app.quicktype.io/)

```dart
// import 'dart:convert';

var jsonO = {"name": "O", "age": 32};
var jsonO2 = {"name": "O2", "age": 44};

void main() {
  var res1 = User.fromJson(jsonO);
  print(res1.toJson());
  print(res1.hashCode);
  print(res1.age);
  var res2 = User.fromJson(jsonO2);
  User.saysomething(); // 靜態方法
  print(res2.toJson());
  print(res2.hashCode);
  var res3 = User.nothing();
  print(res3.toJson());
  print(res3.hashCode);
  var res4 = User(name: 'jack', age: 12);
  print(res4.toJson());
  print(res4.hashCode);
}

class User {
  User({
    this.name,
    this.age,
  });

  String? name;
  int? age;

  static void saysomething() {
    print('say haha');
  }

  // Named Constructor
  factory User.fromJson(Map<String, dynamic> json) => new User(
        name: json["name"],
        age: json["age"],
      );

  // Named Constructor and use : init constructor
  User.nothing()
      : name = 'haha',
        age = 9999;
        
  // JsonEncoder
  // If toEncodable is omitted, it defaults to calling .toJson() on the object.
  Map toJson() => {
        'name': name,
        'age': age,
      };
}
```


#### required param and default value
```dart
class Echo extends StatelessWidget {
  const Echo({
    Key? key,
    required this.text,
    this.backgroundColor = Colors.grey, // 默認值為灰色
  }) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
```

參考資料:
- [Dart 的 Constructor 研究 => Named & Factory](https://www.pigo.idv.tw/archives/1939)
- [Dart/Flutter – Convert Object, List to JSON string](https://bezkoder.com/dart-flutter-convert-object-to-json-string/)
- [JsonEncoder](https://api.dart.dev/stable/2.12.4/dart-convert/JsonEncoder/JsonEncoder.html)
