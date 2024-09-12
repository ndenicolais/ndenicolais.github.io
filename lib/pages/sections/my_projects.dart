import 'package:flutter/material.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/cards/compose_card.dart';
import 'package:myportfolio/widgets/cards/flutter_card.dart';
import 'package:myportfolio/widgets/cards/react_card.dart';
import 'package:myportfolio/widgets/cards/xml_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

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
              key: GlobalKeys.projectsSectionKey,
              child: Column(
                children: [
                  Text(
                    sProjects.toUpperCase(),
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
                          tGithub,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: sectionTitleFontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        Text(
                          dGithub,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontSize: sectionBodyFontSize,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          pFlutter,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const FlutterCards(),
                        const SizedBox(height: 10),
                        Text(
                          pCompose,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const ComposeCards(),
                        const SizedBox(height: 10),
                        Text(
                          pXML,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const XmlCards(),
                        const SizedBox(height: 10),
                        Text(
                          pReact,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: Theme.of(context).colorScheme.tertiary,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const ReactCards(),
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
