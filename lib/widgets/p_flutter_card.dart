import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/responsive_layout.dart';
// import 'package:my_portfolio/utils/strings.dart';
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
                        'WIP',
                        'WIP',
                        'assets/images/app_wip.png',
                        'https://github.com/ndenicolais'),
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
                        'WIP',
                        'WIP',
                        'assets/images/app_wip.png',
                        'https://github.com/ndenicolais'),
                  ],
                ),
              ),
            ),
          );
  }

  Widget buildFlutterCard(BuildContext context, String title, String content,
      String imagePath, String link) {
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
            // ),
          )
        : Padding(
            padding: const EdgeInsets.all(8),
            child: MouseRegion(
              onEnter: (_) => setState(() => cardHoverMap[imagePath] = true),
              onExit: (_) => setState(() => cardHoverMap[imagePath] = false),
              // child: InkWell(
              //   onTap: () {
              //     launchUrlString(link);
              //   },
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
            // ),
          );
  }
}
