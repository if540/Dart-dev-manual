# Dart-dev-manual
Dart 開發手冊

[Dart 30seconds of code](https://www.30secondsofcode.org/dart/p/1)


### 開發隨筆

- 結尾一定要加 ;
- 目錄結構 lib/src 為私有領域，底下檔案將不會被導出公開 API，但仍然可以被引用
- part of "app_page.dart" // 

### 導出方法
```dart
// hw_none 為 default option，若其它條件符合則優先導出其它項目
// 跟 html secret image 用法相
export 'src/hw_none.dart'
    if (dart.library.io) 'src/hw_io.dart'
    if (dart.library.html) 'src/hw_html.dart';
```

### 導入方法
```dart
import 'relativePath'; // 相對路徑 or 絕對(相對於 lib)路徑
import 'package:hw_mp/hw_mp.dart'; // 通用方法，會去查找 lib 內外的檔
```
