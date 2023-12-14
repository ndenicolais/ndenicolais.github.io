import 'package:flutter/material.dart';
import 'package:ndenicolais/utils/responsive_layout.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ComposeCards extends StatefulWidget {
  const ComposeCards({super.key});

  @override
  ComposeCardsState createState() => ComposeCardsState();
}

class ComposeCardsState extends State<ComposeCards> {
  final scrollController = ScrollController();

  Map<String, bool?> cardHoverMap = {};

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? SizedBox(
            height: 180,
            child: RawScrollbar(
              controller: scrollController,
              thumbVisibility: true,
              radius: const Radius.circular(50),
              thickness: 5,
              thumbColor: Theme.of(context).colorScheme.tertiary,
              trackVisibility: true,
              trackRadius: const Radius.circular(50),
              trackColor: Theme.of(context).colorScheme.secondary,
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildComposeCard(
                        context,
                        'Recorder',
                        cRecorder,
                        'assets/images/projects/compose/compose_recorder.png',
                        'https://github.com/ndenicolais/Recorder'),
                    buildComposeCard(
                        context,
                        'Contact List',
                        cContact,
                        'assets/images/projects/compose/compose_contact.png',
                        'https://github.com/ndenicolais/ContactList'),
                    buildComposeCard(
                        context,
                        'Scanner Code',
                        cScanner,
                        'assets/images/projects/compose/compose_scanner.png',
                        'https://github.com/ndenicolais/ScannerCode'),
                    buildComposeCard(
                        context,
                        'Speech And Text',
                        cSpeechAndText,
                        'assets/images/projects/compose/compose_speechtext.png',
                        'https://github.com/ndenicolais/SpeechAndText'),
                    buildComposeCard(
                        context,
                        'Photo Picker',
                        cPhotoPicker,
                        'assets/images/projects/compose/compose_photopicker.png',
                        'https://github.com/ndenicolais/PhotoPicker'),
                    buildComposeCard(
                        context,
                        'Onboarding',
                        cOnboarding,
                        'assets/images/projects/compose/compose_onboarding.png',
                        'https://github.com/ndenicolais/Onboarding'),
                    buildComposeCard(
                        context,
                        'Language Selector',
                        cLanguageSelector,
                        'assets/images/projects/compose/compose_language.png',
                        'https://github.com/ndenicolais/LanguageSelector'),
                    buildComposeCard(
                        context,
                        'Stopwatch',
                        cStopwatch,
                        'assets/images/projects/compose/compose_stopwatch.png',
                        'https://github.com/ndenicolais/Stopwatch'),
                    buildComposeCard(
                        context,
                        'Countdown Timer',
                        cCountdownTimer,
                        'assets/images/projects/compose/compose_countdown.png',
                        'https://github.com/ndenicolais/CountdownTimer'),
                    buildComposeCard(
                        context,
                        'Egg Counter',
                        cEggCounter,
                        'assets/images/projects/compose/compose_egg.png',
                        'https://github.com/ndenicolais/EggCounter'),
                    buildComposeCard(
                        context,
                        'DarkMode',
                        cDarkMode,
                        'assets/images/projects/compose/compose_darkmode.png',
                        'https://github.com/ndenicolais/DarkMode'),
                  ],
                ),
              ),
            ),
          )
        : SizedBox(
            height: 420,
            child: RawScrollbar(
              controller: scrollController,
              thumbVisibility: true,
              radius: const Radius.circular(50),
              thickness: 5,
              thumbColor: Theme.of(context).colorScheme.tertiary,
              trackVisibility: true,
              trackRadius: const Radius.circular(50),
              trackColor: Theme.of(context).colorScheme.secondary,
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildComposeCard(
                        context,
                        'Recorder',
                        cRecorder,
                        'assets/images/projects/compose/compose_recorder.png',
                        'https://github.com/ndenicolais/Recorder'),
                    buildComposeCard(
                        context,
                        'Contact List',
                        cContact,
                        'assets/images/projects/compose/compose_contact.png',
                        'https://github.com/ndenicolais/ContactList'),
                    buildComposeCard(
                        context,
                        'Scanner Code',
                        cScanner,
                        'assets/images/projects/compose/compose_scanner.png',
                        'https://github.com/ndenicolais/ScannerCode'),
                    buildComposeCard(
                        context,
                        'Speech And Text',
                        cSpeechAndText,
                        'assets/images/projects/compose/compose_speechtext.png',
                        'https://github.com/ndenicolais/SpeechAndText'),
                    buildComposeCard(
                        context,
                        'Photo Picker',
                        cPhotoPicker,
                        'assets/images/projects/compose/compose_photopicker.png',
                        'https://github.com/ndenicolais/PhotoPicker'),
                    buildComposeCard(
                        context,
                        'Onboarding',
                        cOnboarding,
                        'assets/images/projects/compose/compose_onboarding.png',
                        'https://github.com/ndenicolais/Onboarding'),
                    buildComposeCard(
                        context,
                        'Language Selector',
                        cLanguageSelector,
                        'assets/images/projects/compose/compose_language.png',
                        'https://github.com/ndenicolais/LanguageSelector'),
                    buildComposeCard(
                        context,
                        'Stopwatch',
                        cStopwatch,
                        'assets/images/projects/compose/compose_stopwatch.png',
                        'https://github.com/ndenicolais/Stopwatch'),
                    buildComposeCard(
                        context,
                        'Countdown Timer',
                        cCountdownTimer,
                        'assets/images/projects/compose/compose_countdown.png',
                        'https://github.com/ndenicolais/CountdownTimer'),
                    buildComposeCard(
                        context,
                        'Egg Counter',
                        cEggCounter,
                        'assets/images/projects/compose/compose_egg.png',
                        'https://github.com/ndenicolais/EggCounter'),
                    buildComposeCard(
                        context,
                        'DarkMode',
                        cDarkMode,
                        'assets/images/projects/compose/compose_darkmode.png',
                        'https://github.com/ndenicolais/DarkMode'),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildComposeCard(BuildContext context, String title, String content,
      String imagePath, String link) {
    return ResponsiveLayout.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(2),
            child: InkWell(
              onTap: () {
                launchUrlString(link);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                color: cardHoverMap[imagePath] ?? false
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.secondary,
                elevation: 5.0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  width: 220,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 100),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(imagePath),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8),
            child: MouseRegion(
              onEnter: (_) => setState(() => cardHoverMap[imagePath] = true),
              onExit: (_) => setState(() => cardHoverMap[imagePath] = false),
              child: InkWell(
                onTap: () {
                  launchUrlString(link);
                },
                child: Card(
                  color: cardHoverMap[imagePath] ?? false
                      ? Theme.of(context).colorScheme.tertiary
                      : Theme.of(context).colorScheme.secondary,
                  elevation: 5.0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    width: 510,
                    height: 340,
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: cardHoverMap[imagePath] ?? false
                          ? Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                content,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(imagePath),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
