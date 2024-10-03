import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';

class MyBio extends StatelessWidget {
  const MyBio({Key? key}) : super(key: key);

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
          key: GlobalKeys.bioSectionKey,
          children: [
            _buildTitle(context, styles),
            _buildDivider(context, styles),
            const SizedBox(height: 10),
            _buildBioBody(context, styles),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, StyleParams styles) {
    return Text(
      sBio.toUpperCase(),
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

  Widget _buildBioBody(BuildContext context, StyleParams styles) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBioText(context, styles),
          const SizedBox(height: 14),
          _buildEducationSection(context, styles),
          const SizedBox(height: 14),
          _buildLanguagesSection(context, styles),
        ],
      ),
    );
  }

  Widget _buildBioText(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tBio,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: styles.mediumSize,
            fontWeight: FontWeight.w600,
          ),
        ),
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

  Widget _buildEducationSection(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationText(context, tEducation, styles),
        _buildEducationDetail(eBachelorYear, styles.smallSize, context,
            Theme.of(context).colorScheme.tertiary),
        _buildEducationDetail(eBachelorType, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary,
            bold: true),
        _buildEducationDetail(eBachelorMap, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary),
        const SizedBox(height: 8),
        _buildEducationDetail(eDiplomaYear, styles.smallSize, context,
            Theme.of(context).colorScheme.tertiary),
        _buildEducationDetail(eDiplomaType, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary,
            bold: true),
        _buildEducationDetail(eDiplomaMap, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary),
      ],
    );
  }

  Widget _buildEducationText(
      BuildContext context, String title, StyleParams styles) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.mediumSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildEducationDetail(
      String text, double? fontSize, BuildContext context, Color color,
      {bool bold = false}) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: fontSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget _buildLanguagesSection(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationText(context, tLanguages, styles),
        const SizedBox(height: 8),
        _buildLanguageRow(
            context, 'assets/images/italian.png', 1, styles.progressBarWidth),
        const SizedBox(height: 4),
        _buildLanguageRow(
            context, 'assets/images/english.png', 0.7, styles.progressBarWidth),
        const SizedBox(height: 12),
        _buildLanguageDetails(
            lTrinityYear, lTrinityType, lTrinity, context, styles),
        const SizedBox(height: 8),
        _buildLanguageDetails(
            lGoldsmithYear, lGoldsmithType, lGoldsmith, context, styles),
      ],
    );
  }

  Widget _buildLanguageRow(BuildContext context, String imagePath,
      double proficiency, double? width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: 30,
          height: 30,
        ),
        const SizedBox(width: 4),
        SizedBox(
          width: width,
          height: 10,
          child: LinearProgressIndicator(
            value: proficiency,
            backgroundColor: Theme.of(context).colorScheme.primary,
            valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.tertiary),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageDetails(String year, String type, String name,
      BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationDetail(year, styles.smallSize, context,
            Theme.of(context).colorScheme.tertiary),
        _buildEducationDetail(type, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary,
            bold: true),
        _buildEducationDetail(name, styles.smallSize, context,
            Theme.of(context).colorScheme.secondary),
      ],
    );
  }
}
