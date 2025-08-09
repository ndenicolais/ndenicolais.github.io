import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myportfolio/pages/intro_page.dart';
import 'package:myportfolio/theme/theme_controller.dart';
import 'package:myportfolio/utils/strings.dart';

void main() {
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late ThemeController themeController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    themeController = Get.find<ThemeController>();
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    themeController.updateTheme(systemBrightness: brightness);
  }

  @override
  void didChangePlatformBrightness() {
    if (themeController.mode == ThemeModeApp.system) {
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      themeController.updateTheme(systemBrightness: brightness);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return ScreenUtilInit(
              designSize: Size(constraints.maxWidth, constraints.maxHeight),
              splitScreenMode: true,
              minTextAdapt: true,
              builder: (context, child) => GetX<ThemeController>(
                builder: (controller) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: me,
                    theme: controller.theme,
                    home: const IntroPage(),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
