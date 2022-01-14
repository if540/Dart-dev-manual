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
載入即可使用檔案內的變數、方法... (與 PHP 類似)

```dart
import 'relativePath'; // 相對路徑 or 絕對(相對於 lib)路徑
import 'dart:math'; // 直接導入套件
import 'package:hw_mp/hw_mp.dart'; // 通用方法，會去查找 lib 內外的檔
```
#### 變形用法
prefix
```dart
// 被設計用來，避免不同庫之間裡有重覆的命名
import 'package:home_page.dart' as pages; // prefix 可以為導入庫，加前綴, pages.HomePage()
import 'package:about_page.dart' as pages; // prefix 可以為導入庫，加前綴, pages.AboutPage()
```

show and hide
```dart
import 'package:my_comm_lib.dart' show 'getName'; // 只會引入對應的 class/function/var...
import 'package:my_comm_lib.dart' hide 'getName'; // 排除對應的 class/function/var...
```

~~part~~ 官方不推薦使用，而是改用 export show
[create mini library](https://dart.dev/guides/libraries/create-library-packages#organizing-a-library-package)
