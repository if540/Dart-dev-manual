# object

```dart
// 參考來源: https://stackoverflow.com/a/53426565)
class JsObject {
  final dynamic _object;

  const JsObject(this._object);

  dynamic operator [](String name) => js.getProperty(_object, name);
  operator []=(String name, dynamic value) =>
      js.setProperty(_object, name, value);
}

// a is your js object
var jsA = new JsObject(a);
jsA['YOUR_PROPERTY']
```
