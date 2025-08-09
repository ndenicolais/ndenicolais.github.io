import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/data/education_list.dart';
import 'package:myportfolio/models/education_model.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/divider_title.dart';

class Education extends StatelessWidget {
  const Education({super.key});

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
          key: GlobalKeys.educationSectionKey,
          children: [
            DividerTitle(text: educationTitle, styles: styles),
            const SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.18),
                child: styles.isMobile
                    ? Column(
                        children: [
                          _buildMobileLayout(
                              context, styles, educationList.first)
                        ],
                      )
                    : _buildDesktopLayout(context, styles)),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(
      BuildContext context, StyleParams styles, EducationModel edu) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildEducationSection(context, styles),
        const SizedBox(height: 14),
        _buildCertificationsSection(context, styles),
        const SizedBox(height: 14),
        _buildLanguagesSection(context, styles),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context, StyleParams styles) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: _buildEducationSection(context, styles)),
        const SizedBox(width: 30),
        Expanded(child: _buildCertificationsSection(context, styles)),
        const SizedBox(width: 30),
        Expanded(child: _buildLanguagesSection(context, styles)),
      ],
    );
  }

  Widget _buildEducationSection(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationTitle(context, tEducationTitle, styles),
        _buildEducationDetails(
          context,
          styles,
          educationList.first.year,
          educationList.first.type,
          educationList.first.structure,
          educationList.first.location,
        ),
        const SizedBox(height: 8),
        _buildEducationDetails(
          context,
          styles,
          educationList.last.year,
          educationList.last.type,
          educationList.last.structure,
          educationList.last.location,
        ),
      ],
    );
  }

  Widget _buildEducationDetails(BuildContext context, StyleParams styles,
      String year, String type, String name, String location) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildEducationYear(context, styles, year),
        _buildEducationType(context, styles, type),
        _buildEducationStructure(context, styles, name),
        _buildEducationLocation(context, styles, location),
      ],
    );
  }

  Widget _buildEducationTitle(
      BuildContext context, String text, StyleParams styles) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontMedium : styles.fontLarge,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildEducationYear(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildEducationType(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.onTertiary.withAlpha(150),
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildEducationStructure(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildEducationLocation(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary.withAlpha(150),
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildCertificationsSection(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCertificationsTitle(context, styles, tCertifications),
        _buildCertificationDetails(context, styles, lGoldsmithYear,
            lGoldsmithType, lGoldsmithStructure, lGoldsmithLocation),
        const SizedBox(height: 8),
        _buildCertificationDetails(context, styles, lTrinityYear, lTrinityType,
            lTrinityStructure, lTrinityLocation),
      ],
    );
  }

  Widget _buildCertificationDetails(BuildContext context, StyleParams styles,
      String year, String type, String name, String location) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCertificationYear(context, styles, year),
        _buildCertificationType(context, styles, type),
        _buildCertificationStructure(context, styles, name),
        _buildCertificationLocation(context, styles, location),
      ],
    );
  }

  Widget _buildCertificationsTitle(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontMedium : styles.fontLarge,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildCertificationYear(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildCertificationType(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.onTertiary.withAlpha(150),
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildCertificationStructure(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildCertificationLocation(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary.withAlpha(150),
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildLanguagesSection(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLanguageTitle(context, styles, tLanguages),
        _buildLanguageRow(context, 'assets/images/italian.png', 1, styles),
        const SizedBox(height: 4),
        _buildLanguageRow(context, 'assets/images/english.png', 0.7, styles),
      ],
    );
  }

  Widget _buildLanguageTitle(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontMedium : styles.fontLarge,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildLanguageRow(BuildContext context, String imagePath,
      double proficiency, StyleParams styles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(imagePath, width: 30, height: 30),
        const SizedBox(width: 4),
        SizedBox(
          width: styles.progressBarWidth,
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
}
