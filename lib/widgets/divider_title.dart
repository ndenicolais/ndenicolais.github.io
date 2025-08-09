import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/style.dart';

class DividerTitle extends StatelessWidget {
  final String text;
  final StyleParams styles;

  const DividerTitle({
    super.key,
    required this.text,
    required this.styles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          indent: styles.isMobile ? styles.dividerSmall : styles.dividerLarge,
          endIndent:
              styles.isMobile ? styles.dividerSmall : styles.dividerLarge,
          color: Theme.of(context).colorScheme.onTertiary,
        ),
        Text(
          text.toUpperCase(),
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.onTertiary,
            fontSize: styles.isMobile ? styles.fontLarge : styles.fontMega,
            fontWeight: FontWeight.w300,
          ),
        ),
        Divider(
          thickness: 1,
          indent: styles.isMobile ? styles.dividerSmall : styles.dividerLarge,
          endIndent:
              styles.isMobile ? styles.dividerSmall : styles.dividerLarge,
          color: Theme.of(context).colorScheme.onTertiary,
        ),
      ],
    );
  }
}
