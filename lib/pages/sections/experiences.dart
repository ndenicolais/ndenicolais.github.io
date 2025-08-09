import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/data/experiences_list.dart';
import 'package:myportfolio/models/experience_model.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/divider_title.dart';
import 'package:myportfolio/widgets/experience_project_widget.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

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
          key: GlobalKeys.experiencesSectionKey,
          children: [
            DividerTitle(text: experiencesTitle, styles: styles),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.12),
              child: styles.isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: experiences.map((exp) {
                        return _buildMobileLayout(context, styles, exp);
                      }).toList(),
                    )
                  : Column(children: _buildDesktopRows(context, styles)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(
      BuildContext context, StyleParams styles, ExperienceModel exp) {
    return ExpansionTile(
      title: Text(
        exp.company,
        style: GoogleFonts.montserrat(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
          fontSize: styles.fontMedium,
        ),
      ),
      iconColor: Theme.of(context).colorScheme.secondary,
      collapsedIconColor: Theme.of(context).colorScheme.secondary,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceRole(context, styles, exp.role),
              _buildExperienceDate(context, styles, exp.year),
              _buildExperienceLocation(context, styles, exp.location),
              const SizedBox(height: 8),
              _buildExperienceDescription(context, styles, exp.description),
              if (exp.projects.isNotEmpty) ...[
                const SizedBox(height: 10),
                _buildProjectsSection(context, exp.projects),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(
      BuildContext context, StyleParams styles, ExperienceModel exp) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExperienceDate(context, styles, exp.year),
        _buildExperienceRole(context, styles, exp.role),
        _buildExperienceCompany(context, styles, exp.company),
        _buildExperienceLocation(context, styles, exp.location),
        const SizedBox(height: 8),
        _buildExperienceDescription(context, styles, exp.description),
        if (exp.projects.isNotEmpty) ...[
          const SizedBox(height: 10),
          _buildProjectsSection(context, exp.projects),
        ],
      ],
    );
  }

  List<Widget> _buildDesktopRows(BuildContext context, StyleParams styles) {
    List<Widget> rows = [];
    for (int i = 0; i < experiences.length; i += 2) {
      final first = experiences[i];
      final second = (i + 1 < experiences.length) ? experiences[i + 1] : null;
      rows.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildDesktopLayout(context, styles, first),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: second != null
                  ? _buildDesktopLayout(context, styles, second)
                  : Container(),
            ),
          ],
        ),
      );
      rows.add(const SizedBox(height: 32));
    }
    return rows;
  }

  Widget _buildExperienceDate(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildExperienceRole(
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

  Widget _buildExperienceCompany(
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

  Widget _buildExperienceLocation(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary.withAlpha(150),
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildExperienceDescription(
      BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildProjectsSection(
      BuildContext context, List<ExperienceProjectModel> projects) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: projects.map((project) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ExpansionTile(
            title: Text(
              project.title,
              style: GoogleFonts.montserrat(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            iconColor: Theme.of(context).colorScheme.secondary,
            collapsedIconColor: Theme.of(context).colorScheme.secondary,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ExperienceProjectWidget(experienceProject: project),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
