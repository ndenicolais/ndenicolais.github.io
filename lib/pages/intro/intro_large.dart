import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ndenicolais/routes.dart';

class IntroPageLarge extends StatefulWidget {
  const IntroPageLarge({Key? key}) : super(key: key);

  @override
  IntroPageLargeState createState() => IntroPageLargeState();
}

class IntroPageLargeState extends State<IntroPageLarge> {
  @override
  void initState() {
    super.initState();
    navigateToHomePage();
  }

  navigateToHomePage() async {
    await Future.delayed(const Duration(seconds: 4));

    // Verifica se il widget è ancora montato prima di eseguire la navigazione
    if (mounted) {
      Navigator.of(context).pushNamed(Routes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
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
