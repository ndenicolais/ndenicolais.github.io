import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';
import 'package:my_portfolio/pages/home/home_large.dart';
import 'package:my_portfolio/pages/home/home_medium.dart';
import 'package:my_portfolio/pages/home/home_small.dart';
import 'package:my_portfolio/pages/intro/intro_large.dart';
import 'package:my_portfolio/pages/intro/intro_medium.dart';
import 'package:my_portfolio/pages/intro/intro_small.dart';
import 'package:my_portfolio/pages/projects/projects_large.dart';
import 'package:my_portfolio/pages/projects/projects_medium.dart';
import 'package:my_portfolio/pages/projects/projects_small.dart';
import 'package:my_portfolio/pages/works/works_large.dart';
import 'package:my_portfolio/pages/works/works_medium.dart';
import 'package:my_portfolio/pages/works/works_small.dart';

// var logger = Logger();

class ResponsiveLayout {
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 1200 &&
        MediaQuery.of(context).size.width > 600;
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }
}

Widget buildIntroBody(BuildContext context) {
  if (ResponsiveLayout.isLargeScreen(context)) {
    // logger.d('Large Screen - Width: ${MediaQuery.of(context).size.width}');
    return const IntroPageLarge();
  } else if (ResponsiveLayout.isMediumScreen(context)) {
    // logger.d('Medium Screen - Width: ${MediaQuery.of(context).size.width}');
    return const IntroPageMedium();
  } else {
    // logger.d('Small Screen - Width: ${MediaQuery.of(context).size.width}');
    return const IntroPageSmall();
  }
}

Widget buildHomeBody(BuildContext context) {
  if (ResponsiveLayout.isLargeScreen(context)) {
    // logger.d('Large Screen - Width: ${MediaQuery.of(context).size.width}');
    return const HomePageLarge();
  } else if (ResponsiveLayout.isMediumScreen(context)) {
    // logger.d('Medium Screen - Width: ${MediaQuery.of(context).size.width}');
    return const HomePageMedium();
  } else {
    // logger.d('Small Screen - Width: ${MediaQuery.of(context).size.width}');
    return const HomePageSmall();
  }
}

Widget buildWorksBody(BuildContext context) {
  if (ResponsiveLayout.isLargeScreen(context)) {
    // logger.d('Large Screen - Width: ${MediaQuery.of(context).size.width}');
    return const WorksPageLarge();
  } else if (ResponsiveLayout.isMediumScreen(context)) {
    // logger.d('Medium Screen - Width: ${MediaQuery.of(context).size.width}');
    return const WorksPageMedium();
  } else {
    // logger.d('Small Screen - Width: ${MediaQuery.of(context).size.width}');
    return const WorksPageSmall();
  }
}

Widget buildProjectsBody(BuildContext context) {
  if (ResponsiveLayout.isLargeScreen(context)) {
    // logger.d('Large Screen - Width: ${MediaQuery.of(context).size.width}');
    return const ProjectsPageLarge();
  } else if (ResponsiveLayout.isMediumScreen(context)) {
    // logger.d('Medium Screen - Width: ${MediaQuery.of(context).size.width}');
    return const ProjectsPageMedium();
  } else {
    // logger.d('Small Screen - Width: ${MediaQuery.of(context).size.width}');
    return const ProjectsPageSmall();
  }
}
