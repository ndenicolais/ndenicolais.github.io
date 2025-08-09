import 'package:flutter/material.dart';
import 'package:myportfolio/widgets/cards/xml_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/cards/compose_card.dart';
import 'package:myportfolio/widgets/cards/flutter_card.dart';
import 'package:myportfolio/widgets/cards/react_card.dart';
import 'package:myportfolio/widgets/divider_title.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

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
        child: Container(
          key: GlobalKeys.projectsSectionKey,
          child: Column(
            children: [
              DividerTitle(text: projectsTitle, styles: styles),
              const SizedBox(height: 10),
              _buildProjectSection(context, styles),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectSection(BuildContext context, StyleParams styles) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProjectTitle(context, styles, tGithub, dGithub),
          const SizedBox(height: 10),
          _buildProjectCard(
              context, styles, flutterTitle, const FlutterCards()),
          const SizedBox(height: 10),
          _buildProjectCard(
              context, styles, composeTitle, const ComposeCards()),
          const SizedBox(height: 10),
          _buildProjectCard(context, styles, xmlTitle, const XmlCards()),
          const SizedBox(height: 10),
          _buildProjectCard(context, styles, reactTitle, const ReactCards()),
        ],
      ),
    );
  }

  Widget _buildProjectTitle(BuildContext context, StyleParams styles,
      String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
          ),
        ),
      ],
    );
  }

  Widget _buildProjectCard(
      BuildContext context, StyleParams styles, String title, Widget card) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
            fontWeight: FontWeight.w600,
          ),
        ),
        card,
      ],
    );
  }
}
