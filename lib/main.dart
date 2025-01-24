import 'package:flutter/material.dart';
import 'package:myportfolio/pages/intro_page.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:myportfolio/theme/theme_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(AppTheme.lightTheme(), false),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        final brightness = MediaQuery.of(context).platformBrightness;

        if (!themeNotifier.isManualTheme) {
          if (brightness == Brightness.dark && !themeNotifier.isDarkMode) {
            themeNotifier.setDarkTheme();
          } else if (brightness == Brightness.light &&
              themeNotifier.isDarkMode) {
            themeNotifier.setLightTheme();
          }
          themeNotifier.resetManualTheme();
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Nicola De Nicolais",
          theme: themeNotifier.currentTheme,
          home: const IntroPage(),
        );
      },
    );
  }
}
