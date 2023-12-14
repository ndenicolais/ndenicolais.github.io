import 'package:flutter/material.dart';
import 'package:ndenicolais/theme/app_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme =
      AppTheme.lightTheme(); // Imposta il tema predefinito

  ThemeData get currentTheme => _currentTheme;

  // Metodo per cambiare il tema
  void toggleTheme() {
    _currentTheme = (_currentTheme == AppTheme.lightTheme())
        ? AppTheme.darkTheme()
        : AppTheme.lightTheme();

    // Notifica i widget interessati che il tema è cambiato
    notifyListeners();
  }
}
