enum ApiGameMode { black, white }

// TODO:
// apiDocument/index/amg#SigninGame
extension ApiGameModeExtension on ApiGameMode {
  String? get value {
    switch (this) {
      case ApiGameMode.black:
        return 'Mr Black Cat';
      case ApiGameMode.white:
        return 'Sir White Cat';
      default:
        return null;
    }
  }
}
