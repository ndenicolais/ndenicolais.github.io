import 'package:flutter/material.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';

class MyBio extends StatelessWidget {
  const MyBio({Key? key}) : super(key: key);

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double titleFontSize = screenWidth > 800 ? 30 : 20;
        double sectionTitleFontSize = screenWidth > 800 ? 24 : 18;
        double sectionBodyFontSize = screenWidth > 800 ? 16 : 14;
        double progressBarWidth = screenWidth > 800 ? 200 : 120;
        double dividerIndent = screenWidth > 800 ? 240 : 80;

        return Material(
          color: Theme.of(context).colorScheme.surface,
          child: Center(
            child: Column(
              children: [
                Text(
                  sAbout.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CustomFont',
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: dividerIndent,
                  endIndent: dividerIndent,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.12),
                  child: Container(
                    key: GlobalKeys.aboutSectionKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tBio,
                                    style: TextStyle(
                                      fontSize: sectionTitleFontSize,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontFamily: 'CustomFont',
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    description,
                                    style: TextStyle(
                                      fontSize: sectionBodyFontSize,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontFamily: 'CustomFont',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tEducation,
                              style: TextStyle(
                                fontSize: sectionTitleFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              eDiploma,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            Text(
                              eLiceo,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              eBachelor,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            Text(
                              eUni,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tLanguages,
                              style: TextStyle(
                                fontSize: sectionTitleFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/italian.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(width: 4),
                                SizedBox(
                                  width: progressBarWidth,
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 1,
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context).colorScheme.tertiary),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/english.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(width: 4),
                                SizedBox(
                                  width: progressBarWidth,
                                  height: 10,
                                  child: LinearProgressIndicator(
                                    value: 0.7,
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context).colorScheme.tertiary),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              lCertification,
                              style: TextStyle(
                                fontSize: 20,
                                color: Theme.of(context).colorScheme.tertiary,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            Text(
                              lTrinity,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                            Text(
                              lGoldsmith,
                              style: TextStyle(
                                fontSize: sectionBodyFontSize,
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
