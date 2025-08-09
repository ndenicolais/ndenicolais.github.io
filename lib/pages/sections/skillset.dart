import 'package:flutter/material.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/divider_title.dart';
import 'package:myportfolio/widgets/skill_item_card.dart';
import 'package:myportfolio/data/skill_items_list.dart';

class Skillset extends StatelessWidget {
  const Skillset({super.key});

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          key: GlobalKeys.skillsSectionKey,
          children: [
            DividerTitle(text: skillsetTitle, styles: styles),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12,
              ),
              child: styles.isMobile
                  ? _buildMobileLayout(context, styles)
                  : _buildDesktopLayout(context, styles),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, StyleParams styles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildSkillItems(context, styles)],
    );
  }

  Widget _buildDesktopLayout(BuildContext context, StyleParams styles) {
    return _buildSkillItems(context, styles);
  }
}

Widget _buildSkillItems(BuildContext context, StyleParams styles) {
  if (styles.isMobile) {
    List<Widget> rows = [];
    for (int i = 0; i < skillItemsList.length; i += 3) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillItemCard(
              title: skillItemsList[i].title,
              image: AssetImage(skillItemsList[i].imagePath),
            ),
            if (i + 1 < skillItemsList.length) SizedBox(width: styles.spacing),
            if (i + 1 < skillItemsList.length)
              SkillItemCard(
                title: skillItemsList[i + 1].title,
                image: AssetImage(skillItemsList[i + 1].imagePath),
              ),
            if (i + 2 < skillItemsList.length) SizedBox(width: styles.spacing),
            if (i + 2 < skillItemsList.length)
              SkillItemCard(
                title: skillItemsList[i + 2].title,
                image: AssetImage(skillItemsList[i + 2].imagePath),
              ),
          ],
        ),
      );
      if (i + 3 < skillItemsList.length) {
        rows.add(SizedBox(height: styles.runSpacing));
      }
    }
    return Column(children: rows);
  } else {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.12),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: styles.spacing,
        runSpacing: styles.runSpacing,
        children: skillItemsList.map((skill) {
          return SkillItemCard(
            title: skill.title,
            image: AssetImage(skill.imagePath),
          );
        }).toList(),
      ),
    );
  }
}
