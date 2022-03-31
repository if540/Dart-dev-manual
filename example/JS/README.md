# [web] README

## Troubleshooting

### 未分類

Global Variable use 
```dart
// object assign empty function
Map<String, dynamic> options = {"a": "", "b": () {}};
options["a"] = "a value";
options["b"] = () { print('b assign new function'); }; 
```
