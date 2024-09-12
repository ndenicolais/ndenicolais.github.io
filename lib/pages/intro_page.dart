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
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildSmallScreenLayout();
          } else if (constraints.maxWidth < 1200) {
            return _buildMediumScreenLayout();
          } else {
            return _buildLargeScreenLayout();
          }
        },
      ),
    );
  }

  Widget _buildSmallScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeartbeatLogo(
            width: 120,
            height: 120,
          ),
        ],
      ),
    );
  }

  Widget _buildMediumScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeartbeatLogo(
            width: 140,
            height: 140,
          ),
        ],
      ),
    );
  }

  Widget _buildLargeScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeartbeatLogo(
            width: 180,
            height: 180,
          ),
        ],
      ),
    );
  }
}
