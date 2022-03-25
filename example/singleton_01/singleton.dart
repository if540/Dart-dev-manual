export 'singleton/singleton_none.dart'
  if (dart.library.io) 'singleton/singleton_io.dart'
  if (dart.library.html) 'singleton/singleton_html.dart';
