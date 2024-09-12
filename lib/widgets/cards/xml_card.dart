import 'package:flutter/material.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/card_item.dart';

class XmlCards extends StatefulWidget {
  const XmlCards({super.key});

  @override
  XmlCardsState createState() => XmlCardsState();
}

class XmlCardsState extends State<XmlCards> {
  final scrollController = ScrollController();

  Map<String, bool?> cardHoverMap = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
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
                    title: xmlTitSensors,
                    imageUrl: 'assets/images/projects/xml/xml_sensors.png',
                    description: xmlDesSensors,
                    linkUrl: 'https://github.com/ndenicolais/AndroidSensors',
                  ),
                  CardItem(
                    title: xmlTitSTT,
                    imageUrl: 'assets/images/projects/xml/xml_stt.png',
                    description: xmlDesSTT,
                    linkUrl:
                        'https://github.com/ndenicolais/AndroidSpeechToText',
                  ),
                  CardItem(
                    title: xmlTitRecorder,
                    imageUrl: 'assets/images/projects/xml/xml_recorder.png',
                    description: xmlDesRecorder,
                    linkUrl: 'https://github.com/ndenicolais/AndroidRecorder',
                  ),
                  CardItem(
                    title: xmlTitLanguage,
                    imageUrl: 'assets/images/projects/xml/xml_language.png',
                    description: xmlDesLanguage,
                    linkUrl:
                        'https://github.com/ndenicolais/AndroidSwitchLanguage',
                  ),
                  CardItem(
                    title: xmlTitFolder,
                    imageUrl: 'assets/images/projects/xml/xml_folder.png',
                    description: xmlDesFolder,
                    linkUrl:
                        'https://github.com/ndenicolais/AndroidFolderCreation',
                  ),
                  CardItem(
                    title: xmlTitDarkmode,
                    imageUrl: 'assets/images/projects/xml/xml_darkmode.png',
                    description: xmlDesDarkmode,
                    linkUrl: 'https://github.com/ndenicolais/AndroidDarkMode',
                  ),
                  CardItem(
                    title: xmlTitSQLite,
                    imageUrl: 'assets/images/projects/xml/xml_sqlite.png',
                    description: xmlDesSQLite,
                    linkUrl: 'https://github.com/ndenicolais/AndroidSQLite',
                  ),
                  CardItem(
                    title: xmlTitOnboarding,
                    imageUrl: 'assets/images/projects/xml/xml_onboarding.png',
                    description: xmlDesOnboarding,
                    linkUrl: 'https://github.com/ndenicolais/AndroidOnboarding',
                  ),
                  CardItem(
                    title: xmlTitToast,
                    imageUrl: 'assets/images/projects/xml/xml_toast.png',
                    description: xmlDesToast,
                    linkUrl:
                        'https://github.com/ndenicolais/AndroidToastMessage',
                  ),
                  CardItem(
                    title: xmlTitAnimations,
                    imageUrl: 'assets/images/projects/xml/xml_animations.png',
                    description: xmlDesAnimations,
                    linkUrl: 'https://github.com/ndenicolais/AndroidAnimations',
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
