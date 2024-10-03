import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/skill_item.dart';

class MySkills extends StatelessWidget {
  const MySkills({Key? key}) : super(key: key);

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
            _buildTitle(context, styles),
            _buildDivider(context, styles),
            const SizedBox(height: 10),
            _buildSkillBody(context, styles),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, StyleParams styles) {
    return Text(
      sSkills.toUpperCase(),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.largeSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildDivider(BuildContext context, StyleParams styles) {
    return Divider(
      thickness: 1,
      indent: styles.dividerIndent,
      endIndent: styles.dividerIndent,
      color: Theme.of(context).colorScheme.secondary,
    );
  }

  Widget _buildSkillBody(BuildContext context, StyleParams styles) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.12,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: styles.spacing,
        runSpacing: styles.runSpacing,
        children: _buildSkillItems(),
      ),
    );
  }

  List<Widget> _buildSkillItems() {
    final skills = [
      {'title': sDart, 'imagePath': 'assets/images/development/dart.png'},
      {'title': sFlutter, 'imagePath': 'assets/images/development/flutter.png'},
      {'title': sKotlin, 'imagePath': 'assets/images/development/kotlin.png'},
      {
        'title': sCompose,
        'imagePath': 'assets/images/development/jetpackcompose.png'
      },
      {'title': sVsc, 'imagePath': 'assets/images/development/vscode.png'},
      {
        'title': sStudio,
        'imagePath': 'assets/images/development/androidstudio.png'
      },
      {'title': sFigma, 'imagePath': 'assets/images/development/figma.png'},
      {'title': sCanva, 'imagePath': 'assets/images/development/canva.png'},
      {
        'title': sFirebase,
        'imagePath': 'assets/images/development/firebase.png'
      },
      {'title': sMongo, 'imagePath': 'assets/images/development/mongodb.png'},
      {
        'title': sJavascript,
        'imagePath': 'assets/images/development/javascript.png'
      },
      {
        'title': sTypescript,
        'imagePath': 'assets/images/development/typescript.png'
      },
      {'title': sHTML, 'imagePath': 'assets/images/development/html.png'},
      {'title': sCSS, 'imagePath': 'assets/images/development/css.png'},
      {'title': sReact, 'imagePath': 'assets/images/development/react.png'},
      {'title': sNode, 'imagePath': 'assets/images/development/nodejs.png'},
    ];

    return skills.map((skill) {
      return SkillItem(
        title: skill['title'] as String,
        image: AssetImage(skill['imagePath'] as String),
      );
    }).toList();
  }
}
