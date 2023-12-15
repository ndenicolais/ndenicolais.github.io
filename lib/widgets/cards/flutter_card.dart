import 'package:flutter/material.dart';
import 'package:ndenicolais/models/card_model.dart';
import 'package:ndenicolais/utils/responsive_layout.dart';
// import 'package:ndenicolais/utils/strings.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class FlutterCards extends StatefulWidget {
  const FlutterCards({super.key});

  @override
  FlutterCardsState createState() => FlutterCardsState();
}

class FlutterCardsState extends State<FlutterCards> {
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
                    buildFlutterCard(
                      context,
                      CardModel(
                          title: 'WIP',
                          description: 'WIP',
                          imagePath:
                              'assets/images/projects/flutter/flutter_todo.png',
                          githubLink: 'https://github.com/ndenicolais'),
                    ),
                    buildFlutterCard(
                      context,
                      CardModel(
                          title: 'WIP',
                          description: 'WIP',
                          imagePath:
                              'assets/images/projects/flutter/flutter_inventory.png',
                          githubLink: 'https://github.com/ndenicolais'),
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
                    buildFlutterCard(
                      context,
                      CardModel(
                          title: 'WIP',
                          description: 'WIP',
                          imagePath:
                              'assets/images/projects/flutter/flutter_todo.png',
                          githubLink: 'https://github.com/ndenicolais'),
                    ),
                    buildFlutterCard(
                      context,
                      CardModel(
                          title: 'WIP',
                          description: 'WIP',
                          imagePath:
                              'assets/images/projects/flutter/flutter_inventory.png',
                          githubLink: 'https://github.com/ndenicolais'),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildFlutterCard(BuildContext context, CardModel card) {
    return ResponsiveLayout.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.all(2),
            // child: InkWell(
            //   onTap: () {
            //     launchUrlString(link);
            //   },
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
            // ),
          )
        : Padding(
            padding: const EdgeInsets.all(8),
            child: MouseRegion(
              onEnter: (_) =>
                  setState(() => cardHoverMap[card.imagePath] = true),
              onExit: (_) =>
                  setState(() => cardHoverMap[card.imagePath] = false),
              // child: InkWell(
              //   onTap: () {
              //     launchUrlString(link);
              //   },
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
            // ),
          );
  }
}
