import 'package:flutter/material.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/work_container.dart';

class MyWorks extends StatelessWidget {
  const MyWorks({Key? key}) : super(key: key);

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
        double dividerIndent = screenWidth > 800 ? 240 : 80;

        return Material(
          color: Theme.of(context).colorScheme.surface,
          child: Center(
            child: Container(
              key: GlobalKeys.worksSectionKey,
              child: Column(
                children: [
                  Text(
                    sWorks.toUpperCase(),
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
                      horizontal: MediaQuery.of(context).size.width * 0.12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tArethusa,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: sectionTitleFontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          dTime,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          dArethusa,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: sectionBodyFontSize,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: WorkContainer(
                                title: tDiggerly,
                                description: dDiggerly,
                                url: AppConstants.uriDiggerly,
                              ),
                            ),
                            Expanded(
                              child: WorkContainer(
                                title: tReasset,
                                description: dReasset,
                                url: AppConstants.uriReasset,
                              ),
                            ),
                            Expanded(
                              child: WorkContainer(
                                title: tCADS,
                                description: dCADS,
                                url: AppConstants.uriCads,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
