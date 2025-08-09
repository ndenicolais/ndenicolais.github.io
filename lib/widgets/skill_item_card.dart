import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/style.dart';

class SkillItemCard extends StatelessWidget {
  const SkillItemCard({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return Column(
      children: [
        Image(
          image: image,
          width: styles.isMobile ? styles.iconSmall : styles.iconMedium,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: styles.containerMicro,
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: styles.isMobile ? styles.fontSmall : styles.fontMedium,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
