import 'package:flutter/material.dart';
import 'package:ndenicolais/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class ThemeNotifier extends ChangeNotifier {
//   ThemeData _currentTheme =
//       AppTheme.lightTheme(); // Imposta il tema predefinito

//   ThemeData get currentTheme => _currentTheme;

//   // Metodo per cambiare il tema
//   void toggleTheme() {
//     _currentTheme = (_currentTheme == AppTheme.lightTheme())
//         ? AppTheme.darkTheme()
//         : AppTheme.lightTheme();

//     // Notifica i widget interessati che il tema è cambiato
//     notifyListeners();
//   }
// }

class ThemeNotifier with ChangeNotifier {
  ThemeData _currentTheme;

  ThemeNotifier(this._currentTheme);

  ThemeData get currentTheme => _currentTheme;

  ThemeData getTheme() {
    return _currentTheme;
  }

  ThemeData getDarkTheme() {
    return darkTheme;
  }

  ThemeMode getThemeMode() {
    return _currentTheme == darkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  Future<void> toggleTheme() async {
    _currentTheme = _currentTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();

    // Salva il tema utilizzando SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', _currentTheme == darkTheme);
  }

  static final lightTheme = AppTheme.lightTheme();
  static final darkTheme = AppTheme.darkTheme();
}
