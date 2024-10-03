import 'package:flutter/material.dart';
import 'package:myportfolio/pages/home_page.dart';
import 'package:myportfolio/widgets/intro_logo.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  IntroPageState createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroLogo(
              width: _getLogoSize(screenWidth),
              height: _getLogoSize(screenWidth),
            ),
          ],
        ),
      ),
    );
  }

  double _getLogoSize(double screenWidth) {
    if (screenWidth < 600) {
      return 120;
    } else if (screenWidth < 1200) {
      return 140;
    } else {
      return 180;
    }
  }
}
