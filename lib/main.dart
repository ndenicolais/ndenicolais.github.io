import 'package:flutter/material.dart';
import 'package:my_portfolio/routes.dart';
import 'package:provider/provider.dart';
import 'package:my_portfolio/providers/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      initialRoute: Routes.intro,
      routes: Routes.getRoutes(),
    );
  }
}
