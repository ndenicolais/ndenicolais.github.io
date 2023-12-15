import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ndenicolais/routes.dart';
import 'package:provider/provider.dart';
import 'package:ndenicolais/providers/theme_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Blocca l'orientamento verticale
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Carica le preferenze salvate
  final prefs = await SharedPreferences.getInstance();
  final isDarkMode = prefs.getBool('isDarkMode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(
        isDarkMode ? ThemeNotifier.darkTheme : ThemeNotifier.lightTheme,
      ),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, _) {
        return MaterialApp(
          title: "Nicola De Nicolais",
          theme: themeNotifier.getTheme(),
          darkTheme: themeNotifier.getDarkTheme(),
          themeMode: themeNotifier.getThemeMode(),
          initialRoute: Routes.intro,
          routes: Routes.getRoutes(),
        );
      },
    );
  }
}
