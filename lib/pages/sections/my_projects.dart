import 'package:flutter/material.dart';
import 'package:myportfolio/widgets/cards/xml_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/cards/compose_card.dart';
import 'package:myportfolio/widgets/cards/flutter_card.dart';
import 'package:myportfolio/widgets/cards/react_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

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
              _buildHeader(context, styles),
              _buildDivider(context, styles),
              const SizedBox(height: 10),
              _buildProjectSection(context, styles),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, StyleParams styles) {
    return Text(
      sProjects.toUpperCase(),
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
          _buildProjectCard(context, styles, pFlutter, const FlutterCards()),
          const SizedBox(height: 10),
          _buildProjectCard(context, styles, pCompose, const ComposeCards()),
          const SizedBox(height: 10),
          _buildProjectCard(context, styles, pXML, const XmlCards()),
          const SizedBox(height: 10),
          _buildProjectCard(context, styles, pReact, const ReactCards()),
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
            fontSize: styles.mediumSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: styles.smallSize,
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
            fontSize: styles.mediumSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        card,
      ],
    );
  }
}
