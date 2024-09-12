import 'package:flutter/material.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _currentTheme;
  bool _isDarkMode;
  bool _isManualTheme;

  ThemeNotifier(this._currentTheme, this._isDarkMode) : _isManualTheme = false;

  ThemeData get currentTheme => _currentTheme;
  bool get isDarkMode => _isDarkMode;

  void switchTheme() {
    _isManualTheme = true;
    if (_isDarkMode) {
      _currentTheme = AppTheme.lightTheme();
      _isDarkMode = false;
    } else {
      _currentTheme = AppTheme.darkTheme();
      _isDarkMode = true;
    }
    notifyListeners();
  }

  void setLightTheme() {
    _isManualTheme = true;
    _currentTheme = AppTheme.lightTheme();
    _isDarkMode = false;
    notifyListeners();
  }

  void setDarkTheme() {
    _isManualTheme = true;
    _currentTheme = AppTheme.darkTheme();
    _isDarkMode = true;
    notifyListeners();
  }

  void resetManualTheme() {
    _isManualTheme = false;
  }

  bool get isManualTheme => _isManualTheme;
}
