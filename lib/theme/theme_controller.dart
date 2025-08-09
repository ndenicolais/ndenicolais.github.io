import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeApp { system, light, dark }

class ThemeController extends GetxController {
  final Rx<ThemeData> _theme = AppTheme.lightTheme().obs;
  final RxBool _isDark = false.obs;
  final Rx<ThemeModeApp> _mode = ThemeModeApp.system.obs;

  ThemeData get theme => _theme.value;
  bool get isDark => _isDark.value;
  ThemeModeApp get mode => _mode.value;

  static const String _themeModeKey = 'theme_mode';

  @override
  void onInit() {
    super.onInit();
    _loadThemeFromPrefs();
  }

  Future<void> _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final modeString = prefs.getString(_themeModeKey) ?? 'system';
    switch (modeString) {
      case 'light':
        setLightMode(save: false);
        break;
      case 'dark':
        setDarkMode(save: false);
        break;
      default:
        setSystemMode(
          systemBrightness:
              WidgetsBinding.instance.platformDispatcher.platformBrightness,
          save: false,
        );
    }
  }

  Future<void> _saveThemeToPrefs(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeModeKey, mode);
  }

  void updateTheme({Brightness? systemBrightness}) {
    if (_mode.value == ThemeModeApp.system && systemBrightness != null) {
      if (systemBrightness == Brightness.dark) {
        _theme.value = AppTheme.darkTheme();
        _isDark.value = true;
      } else {
        _theme.value = AppTheme.lightTheme();
        _isDark.value = false;
      }
    } else if (_mode.value == ThemeModeApp.light) {
      _theme.value = AppTheme.lightTheme();
      _isDark.value = false;
    } else if (_mode.value == ThemeModeApp.dark) {
      _theme.value = AppTheme.darkTheme();
      _isDark.value = true;
    }
  }

  void setSystemMode({Brightness? systemBrightness, bool save = true}) {
    _mode.value = ThemeModeApp.system;
    updateTheme(systemBrightness: systemBrightness);
    if (save) _saveThemeToPrefs('system');
  }

  void setLightMode({bool save = true}) {
    _mode.value = ThemeModeApp.light;
    updateTheme();
    if (save) _saveThemeToPrefs('light');
  }

  void setDarkMode({bool save = true}) {
    _mode.value = ThemeModeApp.dark;
    updateTheme();
    if (save) _saveThemeToPrefs('dark');
  }

  void switchTheme() {
    if (_isDark.value) {
      setLightMode();
    } else {
      setDarkMode();
    }
  }
}
