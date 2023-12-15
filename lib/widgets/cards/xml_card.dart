import 'package:flutter/material.dart';
import 'package:ndenicolais/models/card_model.dart';
import 'package:ndenicolais/utils/responsive_layout.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
    return ResponsiveLayout.isSmallScreen(context)
        ? SizedBox(
            height: 270,
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
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Sensors',
                        description: xSensors,
                        imagePath: 'assets/images/projects/xml/xml_sensors.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSensors',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Speech to Text',
                        description: xSpeechToText,
                        imagePath:
                            'assets/images/projects/xml/xml_speech_to_text.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSpeechToText',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Recorder',
                        description: xRecorder,
                        imagePath:
                            'assets/images/projects/xml/xml_recorder.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidRecorder',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Switch Language',
                        description: xSwitchLanguage,
                        imagePath:
                            'assets/images/projects/xml/xml_switch_language.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSwitchLanguage',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'SQL Lite',
                        description: xSQLite,
                        imagePath:
                            'assets/images/projects/xml/xml_sql_lite.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSQLite',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Folder Creation',
                        description: xFolderCreation,
                        imagePath:
                            'assets/images/projects/xml/xml_folder_creation.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidFolderCreation',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'DarkMode',
                        description: xDarkMode,
                        imagePath:
                            'assets/images/projects/xml/xml_dark_mode.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidDarkMode',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'OnBoarding',
                        description: xOnBoarding,
                        imagePath:
                            'assets/images/projects/xml/xml_onboarding.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidOnBoarding',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'ToastMessage',
                        description: xToastMessage,
                        imagePath:
                            'assets/images/projects/xml/xml_toast_message.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidToastMessage',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Aniamtions',
                        description: xAnimations,
                        imagePath:
                            'assets/images/projects/xml/xml_animations.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidAnimations',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : SizedBox(
            height: 460,
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
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Sensors',
                        description: xSensors,
                        imagePath: 'assets/images/projects/xml/xml_sensors.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSensors',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Speech to Text',
                        description: xSpeechToText,
                        imagePath:
                            'assets/images/projects/xml/xml_speech_to_text.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSpeechToText',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Recorder',
                        description: xRecorder,
                        imagePath:
                            'assets/images/projects/xml/xml_recorder.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidRecorder',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Switch Language',
                        description: xSwitchLanguage,
                        imagePath:
                            'assets/images/projects/xml/xml_switch_language.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSwitchLanguage',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'SQL Lite',
                        description: xSQLite,
                        imagePath:
                            'assets/images/projects/xml/xml_sql_lite.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidSQLite',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Folder Creation',
                        description: xFolderCreation,
                        imagePath:
                            'assets/images/projects/xml/xml_folder_creation.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidFolderCreation',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'DarkMode',
                        description: xDarkMode,
                        imagePath:
                            'assets/images/projects/xml/xml_dark_mode.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidDarkMode',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'OnBoarding',
                        description: xOnBoarding,
                        imagePath:
                            'assets/images/projects/xml/xml_onboarding.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidOnBoarding',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'ToastMessage',
                        description: xToastMessage,
                        imagePath:
                            'assets/images/projects/xml/xml_toast_message.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidToastMessage',
                      ),
                    ),
                    buildXmlCard(
                      context,
                      CardModel(
                        title: 'Aniamtions',
                        description: xAnimations,
                        imagePath:
                            'assets/images/projects/xml/xml_animations.png',
                        githubLink:
                            'https://github.com/ndenicolais/AndroidAnimations',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildXmlCard(BuildContext context, CardModel card) {
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
                  width: 120,
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
                    width: 210,
                    height: 400,
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
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                card.description,
                                style: TextStyle(
                                  fontSize: 14,
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
