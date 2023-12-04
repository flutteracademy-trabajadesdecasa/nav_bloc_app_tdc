enum AppTheme { light, dark }

class ThemeState {
  final AppTheme appTheme;

  ThemeState({required this.appTheme});

  factory ThemeState.initial() {
    return ThemeState(appTheme: AppTheme.dark);
  }

  ThemeState copyWith({AppTheme? appTheme}) {
    return ThemeState(appTheme: appTheme ?? this.appTheme);
  }
}
