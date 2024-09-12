import 'package:flutter/material.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/skill_item.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double titleFontSize = screenWidth > 800 ? 30 : 20;
        double spacing = screenWidth > 800 ? 20 : 10;
        double runSpacing = screenWidth > 800 ? 30 : 15;
        double dividerIndent = screenWidth > 800 ? 240 : 80;

        return Material(
          color: Theme.of(context).colorScheme.surface,
          child: Center(
            child: Column(
              children: [
                Text(
                  sSkills.toUpperCase(),
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
                    key: GlobalKeys.skillsSectionKey,
                    child: Column(
                      children: [
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: spacing,
                          runSpacing: runSpacing,
                          children: [
                            SkillItem(
                              title: sDart,
                              image: const AssetImage(
                                  'assets/images/development/dart.png'),
                            ),
                            SkillItem(
                              title: sFlutter,
                              image: const AssetImage(
                                  'assets/images/development/flutter.png'),
                            ),
                            SkillItem(
                              title: sFirebase,
                              image: const AssetImage(
                                  'assets/images/development/firebase.png'),
                            ),
                            SkillItem(
                              title: sAndroid,
                              image: const AssetImage(
                                  'assets/images/development/android.png'),
                            ),
                            SkillItem(
                              title: sKotlin,
                              image: const AssetImage(
                                  'assets/images/development/kotlin.png'),
                            ),
                            SkillItem(
                              title: sFigma,
                              image: const AssetImage(
                                  'assets/images/development/figma.png'),
                            ),
                            SkillItem(
                              title: sJavascript,
                              image: const AssetImage(
                                  'assets/images/development/javascript.png'),
                            ),
                            SkillItem(
                              title: sTypescript,
                              image: const AssetImage(
                                  'assets/images/development/typescript.png'),
                            ),
                            SkillItem(
                              title: sHTML,
                              image: const AssetImage(
                                  'assets/images/development/html.png'),
                            ),
                            SkillItem(
                              title: sCSS,
                              image: const AssetImage(
                                  'assets/images/development/css.png'),
                            ),
                            SkillItem(
                              title: sReact,
                              image: const AssetImage(
                                  'assets/images/development/react.png'),
                            ),
                            SkillItem(
                              title: sNode,
                              image: const AssetImage(
                                  'assets/images/development/nodejs.png'),
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
