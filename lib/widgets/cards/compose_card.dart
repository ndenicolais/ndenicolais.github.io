import 'package:flutter/material.dart';
import 'package:ndenicolais/models/card_model.dart';
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
                      CardModel(
                        title: 'Recorder',
                        description: cRecorder,
                        imagePath:
                            'assets/images/projects/compose/compose_recorder.png',
                        githubLink: 'https://github.com/ndenicolais/Recorder',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Contact List',
                        description: cContact,
                        imagePath:
                            'assets/images/projects/compose/compose_contact.png',
                        githubLink:
                            'https://github.com/ndenicolais/ContactList',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Scanner Code',
                        description: cScanner,
                        imagePath:
                            'assets/images/projects/compose/compose_scanner.png',
                        githubLink:
                            'https://github.com/ndenicolais/ScannerCode',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Speech And Text',
                        description: cSpeechAndText,
                        imagePath:
                            'assets/images/projects/compose/compose_speechtext.png',
                        githubLink:
                            'https://github.com/ndenicolais/SpeechAndText',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Photo Picker',
                        description: cPhotoPicker,
                        imagePath:
                            'assets/images/projects/compose/compose_photopicker.png',
                        githubLink:
                            'https://github.com/ndenicolais/PhotoPicker',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Onboarding',
                        description: cOnboarding,
                        imagePath:
                            'assets/images/projects/compose/compose_onboarding.png',
                        githubLink: 'https://github.com/ndenicolais/Onboarding',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Language Selector',
                        description: cLanguageSelector,
                        imagePath:
                            'assets/images/projects/compose/compose_language.png',
                        githubLink:
                            'https://github.com/ndenicolais/LanguageSelector',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Stopwatch',
                        description: cStopwatch,
                        imagePath:
                            'assets/images/projects/compose/compose_stopwatch.png',
                        githubLink: 'https://github.com/ndenicolais/Stopwatch',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Countdown Timer',
                        description: cCountdownTimer,
                        imagePath:
                            'assets/images/projects/compose/compose_countdown.png',
                        githubLink:
                            'https://github.com/ndenicolais/CountdownTimer',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Egg Counter',
                        description: cEggCounter,
                        imagePath:
                            'assets/images/projects/compose/compose_egg.png',
                        githubLink: 'https://github.com/ndenicolais/EggCounter',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'DarkMode',
                        description: cDarkMode,
                        imagePath:
                            'assets/images/projects/compose/compose_darkmode.png',
                        githubLink: 'https://github.com/ndenicolais/DarkMode',
                      ),
                    ),
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
                      CardModel(
                        title: 'Recorder',
                        description: cRecorder,
                        imagePath:
                            'assets/images/projects/compose/compose_recorder.png',
                        githubLink: 'https://github.com/ndenicolais/Recorder',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Contact List',
                        description: cContact,
                        imagePath:
                            'assets/images/projects/compose/compose_contact.png',
                        githubLink:
                            'https://github.com/ndenicolais/ContactList',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Scanner Code',
                        description: cScanner,
                        imagePath:
                            'assets/images/projects/compose/compose_scanner.png',
                        githubLink:
                            'https://github.com/ndenicolais/ScannerCode',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Speech And Text',
                        description: cSpeechAndText,
                        imagePath:
                            'assets/images/projects/compose/compose_speechtext.png',
                        githubLink:
                            'https://github.com/ndenicolais/SpeechAndText',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Photo Picker',
                        description: cPhotoPicker,
                        imagePath:
                            'assets/images/projects/compose/compose_photopicker.png',
                        githubLink:
                            'https://github.com/ndenicolais/PhotoPicker',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Onboarding',
                        description: cOnboarding,
                        imagePath:
                            'assets/images/projects/compose/compose_onboarding.png',
                        githubLink: 'https://github.com/ndenicolais/Onboarding',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Language Selector',
                        description: cLanguageSelector,
                        imagePath:
                            'assets/images/projects/compose/compose_language.png',
                        githubLink:
                            'https://github.com/ndenicolais/LanguageSelector',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Stopwatch',
                        description: cStopwatch,
                        imagePath:
                            'assets/images/projects/compose/compose_stopwatch.png',
                        githubLink: 'https://github.com/ndenicolais/Stopwatch',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Countdown Timer',
                        description: cCountdownTimer,
                        imagePath:
                            'assets/images/projects/compose/compose_countdown.png',
                        githubLink:
                            'https://github.com/ndenicolais/CountdownTimer',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'Egg Counter',
                        description: cEggCounter,
                        imagePath:
                            'assets/images/projects/compose/compose_egg.png',
                        githubLink: 'https://github.com/ndenicolais/EggCounter',
                      ),
                    ),
                    buildComposeCard(
                      context,
                      CardModel(
                        title: 'DarkMode',
                        description: cDarkMode,
                        imagePath:
                            'assets/images/projects/compose/compose_darkmode.png',
                        githubLink: 'https://github.com/ndenicolais/DarkMode',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildComposeCard(BuildContext context, CardModel card) {
    return ResponsiveLayout.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(2),
            child: InkWell(
              onTap: () {
                launchUrlString(card.githubLink);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                color: cardHoverMap[card.imagePath] ?? false
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
                      child: Image.asset(card.imagePath),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8),
            child: MouseRegion(
              onEnter: (_) =>
                  setState(() => cardHoverMap[card.imagePath] = true),
              onExit: (_) =>
                  setState(() => cardHoverMap[card.imagePath] = false),
              child: InkWell(
                onTap: () {
                  launchUrlString(card.githubLink);
                },
                child: Card(
                  color: cardHoverMap[card.imagePath] ?? false
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
                      child: cardHoverMap[card.imagePath] ?? false
                          ? Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                card.description,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(card.imagePath),
                            ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
