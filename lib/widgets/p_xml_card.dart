import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/responsive_layout.dart';
import 'package:my_portfolio/utils/strings.dart';
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
                        'Sensors',
                        xSensors,
                        'assets/images/projects/xml/xml_sensors.png',
                        'https://github.com/ndenicolais/AndroidSensors'),
                    buildXmlCard(
                        context,
                        'Speech to Text',
                        xSpeechToText,
                        'assets/images/projects/xml/xml_speech_to_text.png',
                        'https://github.com/ndenicolais/AndroidSpeechToText'),
                    buildXmlCard(
                        context,
                        'Recorder',
                        xRecorder,
                        'assets/images/projects/xml/xml_recorder.png',
                        'https://github.com/ndenicolais/AndroidRecorder'),
                    buildXmlCard(
                        context,
                        'Switch Language',
                        xSwitchLanguage,
                        'assets/images/projects/xml/xml_switch_language.png',
                        'https://github.com/ndenicolais/AndroidSwitchLanguage'),
                    buildXmlCard(
                        context,
                        'SQL Lite',
                        xSQLite,
                        'assets/images/projects/xml/xml_sql_lite.png',
                        'https://github.com/ndenicolais/AndroidSQLite'),
                    buildXmlCard(
                        context,
                        'Folder Creation',
                        xFolderCreation,
                        'assets/images/projects/xml/xml_folder_creation.png',
                        'https://github.com/ndenicolais/AndroidFolderCreation'),
                    buildXmlCard(
                        context,
                        'DarkMode',
                        xDarkMode,
                        'assets/images/projects/xml/xml_dark_mode.png',
                        'https://github.com/ndenicolais/AndroidDarkMode'),
                    buildXmlCard(
                        context,
                        'OnBoarding',
                        xOnBoarding,
                        'assets/images/projects/xml/xml_onboarding.png',
                        'https://github.com/ndenicolais/AndroidOnBoarding'),
                    buildXmlCard(
                        context,
                        'ToastMessage',
                        xToastMessage,
                        'assets/images/projects/xml/xml_toast_message.png',
                        'https://github.com/ndenicolais/AndroidToastMessage'),
                    buildXmlCard(
                        context,
                        'Aniamtions',
                        xAnimations,
                        'assets/images/projects/xml/xml_animations.png',
                        'https://github.com/ndenicolais/AndroidAnimations'),
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
                        'Sensors',
                        xSensors,
                        'assets/images/projects/xml/xml_sensors.png',
                        'https://github.com/ndenicolais/AndroidSensors'),
                    buildXmlCard(
                        context,
                        'Speech to Text',
                        xSpeechToText,
                        'assets/images/projects/xml/xml_speech_to_text.png',
                        'https://github.com/ndenicolais/AndroidSpeechToText'),
                    buildXmlCard(
                        context,
                        'Recorder',
                        xRecorder,
                        'assets/images/projects/xml/xml_recorder.png',
                        'https://github.com/ndenicolais/AndroidRecorder'),
                    buildXmlCard(
                        context,
                        'Switch Language',
                        xSwitchLanguage,
                        'assets/images/projects/xml/xml_switch_language.png',
                        'https://github.com/ndenicolais/AndroidSwitchLanguage'),
                    buildXmlCard(
                        context,
                        'SQL Lite',
                        xSQLite,
                        'assets/images/projects/xml/xml_sql_lite.png',
                        'https://github.com/ndenicolais/AndroidSQLite'),
                    buildXmlCard(
                        context,
                        'Folder Creation',
                        xFolderCreation,
                        'assets/images/projects/xml/xml_folder_creation.png',
                        'https://github.com/ndenicolais/AndroidFolderCreation'),
                    buildXmlCard(
                        context,
                        'DarkMode',
                        xDarkMode,
                        'assets/images/projects/xml/xml_dark_mode.png',
                        'https://github.com/ndenicolais/AndroidDarkMode'),
                    buildXmlCard(
                        context,
                        'OnBoarding',
                        xOnBoarding,
                        'assets/images/projects/xml/xml_onboarding.png',
                        'https://github.com/ndenicolais/AndroidOnBoarding'),
                    buildXmlCard(
                        context,
                        'ToastMessage',
                        xToastMessage,
                        'assets/images/projects/xml/xml_toast_message.png',
                        'https://github.com/ndenicolais/AndroidToastMessage'),
                    buildXmlCard(
                        context,
                        'Aniamtions',
                        xAnimations,
                        'assets/images/projects/xml/xml_animations.png',
                        'https://github.com/ndenicolais/AndroidAnimations'),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildXmlCard(BuildContext context, String title, String content,
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
                  width: 120,
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
                      child: cardHoverMap[imagePath] ?? false
                          ? Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                content,
                                style: TextStyle(
                                  fontSize: 14,
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
