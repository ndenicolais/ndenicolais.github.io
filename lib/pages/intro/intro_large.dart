import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_portfolio/routes.dart';

class IntroPageLarge extends StatelessWidget {
  const IntroPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHomePage() async {
      await Future.delayed(const Duration(seconds: 4));
      Navigator.of(context).pushNamed(Routes.home);
    }

    navigateToHomePage();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFoldingCube(
              color: Theme.of(context).colorScheme.primary,
              size: 200.0,
            ),
            const SizedBox(height: 60),
            Text(
              'ndenicolais',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
                fontFamily: 'CustomFont',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
