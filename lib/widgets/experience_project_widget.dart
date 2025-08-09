import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/models/experience_model.dart';
import 'package:myportfolio/utils/style.dart';

class ExperienceProjectWidget extends StatelessWidget {
  final ExperienceProjectModel experienceProject;

  const ExperienceProjectWidget({
    super.key,
    required this.experienceProject,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context, styles),
          const SizedBox(height: 8),
          _buildDescription(context, styles),
          if (experienceProject.chips.isNotEmpty) ...[
            const SizedBox(height: 8),
            _buildChips(context, styles),
          ],
        ],
      ),
    );
  }

  Text _buildTitle(BuildContext context, StyleParams styles) {
    return Text(
      experienceProject.title,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: styles.isMobile ? styles.fontMedium : styles.fontLarge,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text _buildDescription(BuildContext context, StyleParams styles) {
    return Text(
      experienceProject.description,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
      ),
    );
  }

  Widget _buildChips(BuildContext context, StyleParams styles) {
    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: experienceProject.chips
          .map((chip) => Chip(
                label: Text(
                  chip,
                  style: GoogleFonts.montserrat(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize:
                        styles.isMobile ? styles.fontMicro : styles.fontSmall,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.tertiary,
                side: BorderSide.none,
              ))
          .toList(),
    );
  }
}
