# Dart-dev-manual
Dart 開發手冊

[Dart 30seconds of code](https://www.30secondsofcode.org/dart/p/1)


### 開發隨筆

- 結尾一定要加 ;
- _ 下劃線為區域可見
- $ 錢字號取變數
- 目錄結構 lib/src 為私有領域，底下檔案將不會被導出公開 API，但仍然可以被引用
- 每個 Dart 程序都是一個庫，即便沒有使用關鍵字 library 指定。
- Scaffold 為 MaterialApp 中用來快速實現基礎版面的組件 ex: AppBar、BottomAppBar、FloatingActionButton...
- 類型後加上問號 (?) 為可空 ex: int? 
- 檢查是否為 空、null... ```["", null, false, 0].contains(value)```
- IconButton 取消最小間隔
  ```dart
  IconButton(
    padding: EdgeInsets.zero,
    constraints: BoxConstraints(),
  )
  ```
- [How to Convert Image to Base64 Encoding in Flutter/Dart](https://www.fluttercampus.com/guide/224/convert-image-to-base64/)
- [Flutter Image object to ImageProvider](https://stackoverflow.com/questions/58870443/flutter-image-object-to-imageprovider)
- 檢查資料型 `.runtimeType`
- [Flutter NetworkImage vs cached_network_image](https://stackoverflow.com/questions/65261263/flutter-networkimage-vs-cached-network-image)
- dart enum 賦值方法 [更多做法](https://qa.1r1g.com/sf/ask/2723579981/)
  ```dart
  // example
  void main() {
    print('${Cat.black.name}, ${Cat.black.value}, ${Cat.black.index}');
  }
  enum Cat {
    black,
    white
  }

  extension CatExtension on Cat {
    String? get value {
      switch (this) {
        case Cat.black:
          return 'Mr Black Cat';
        case Cat.white:
          return 'Sir White Cat';
        default:
          return null;
      }
    }
  }
  ```

### 依賴

- pubspec.yaml 就像是 package.json、nuxt.config.js
- dart 會將加載回來的依賴緩存.pub-cache

### 導出方法
```dart
// hw_none 為 default option，若其它條件符合則優先導出其它項目
// 跟 html secret image 用法相
export 'src/hw_none.dart'
    if (dart.library.io) 'src/hw_io.dart'
    if (dart.library.html) 'src/hw_html.dart';
```

```dart
import 'dart:io' if (dart.library.html) 'dart:html';
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


### 按鈕

- ElevatedButton (onPress...) 架高效果，會隨壓力按鈕提高層級、陰影也會
- InkWell (onTap...) 墨水效果
