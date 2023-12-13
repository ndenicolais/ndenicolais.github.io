import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/responsive_layout.dart';

class Routes {
  static const String intro = '/intro';
  static const String home = '/home';
  static const String works = '/works';
  static const String projects = '/projects';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      intro: (context) => buildIntroBody(context),
      home: (context) => buildHomeBody(context),
      works: (context) => buildWorksBody(context),
      projects: (context) => buildProjectsBody(context)
    };
  }
}
