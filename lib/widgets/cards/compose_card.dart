import 'package:flutter/material.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/card_item.dart';

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
    return SizedBox(
      height: 220,
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
          child: Column(
            children: [
              Row(
                children: [
                  CardItem(
                    title: composeTitRecorder,
                    imageUrl:
                        'assets/images/projects/compose/compose_recorder.png',
                    description: composeDesRecorder,
                    linkUrl: 'https://github.com/ndenicolais/Recorder',
                  ),
                  CardItem(
                    title: composeTitScanner,
                    imageUrl:
                        'assets/images/projects/compose/compose_scanner.png',
                    description: composeDesScanner,
                    linkUrl: 'https://github.com/ndenicolais/ScannerCode',
                  ),
                  CardItem(
                    title: composeTitST,
                    imageUrl: 'assets/images/projects/compose/compose_st.png',
                    description: composeDesST,
                    linkUrl: 'https://github.com/ndenicolais/SpeechAndText',
                  ),
                  CardItem(
                    title: composeTitContact,
                    imageUrl:
                        'assets/images/projects/compose/compose_contact.png',
                    description: composeDesContact,
                    linkUrl: 'https://github.com/ndenicolais/ContactList',
                  ),
                  CardItem(
                    title: composeTitPhoto,
                    imageUrl:
                        'assets/images/projects/compose/compose_photo.png',
                    description: composeDesPhoto,
                    linkUrl: 'https://github.com/ndenicolais/PhotoPicker',
                  ),
                  CardItem(
                    title: composeTitOnboarding,
                    imageUrl:
                        'assets/images/projects/compose/compose_onboarding.png',
                    description: composeDesOnboarding,
                    linkUrl: 'https://github.com/ndenicolais/Onboarding',
                  ),
                  CardItem(
                    title: composeTitLanguage,
                    imageUrl:
                        'assets/images/projects/compose/compose_language.png',
                    description: composeDesLanguage,
                    linkUrl: 'https://github.com/ndenicolais/LanguageSelector',
                  ),
                  CardItem(
                    title: composeTitDarkmode,
                    imageUrl:
                        'assets/images/projects/compose/compose_darkmode.png',
                    description: composeDesDarkmode,
                    linkUrl: 'https://github.com/ndenicolais/DarkMode',
                  ),
                  CardItem(
                    title: composeTitStopwatch,
                    imageUrl:
                        'assets/images/projects/compose/compose_stopwatch.png',
                    description: composeDesStopwatch,
                    linkUrl: 'https://github.com/ndenicolais/Stopwatch',
                  ),
                  CardItem(
                    title: composeTitCountdown,
                    imageUrl:
                        'assets/images/projects/compose/compose_countdown.png',
                    description: composeDesCountdown,
                    linkUrl: 'https://github.com/ndenicolais/CountdownTimer',
                  ),
                  CardItem(
                    title: composeTitEgg,
                    imageUrl: 'assets/images/projects/compose/compose_egg.png',
                    description: composeDesEgg,
                    linkUrl: 'https://github.com/ndenicolais/EggCounter',
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
