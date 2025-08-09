import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/models/service_item_model.dart';
import 'package:myportfolio/utils/style.dart';

class ServiceItemCard extends StatelessWidget {
  final ServiceItemModel item;
  final StyleParams styles;

  const ServiceItemCard({super.key, required this.item, required this.styles});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);
    String displayLabel = item.label;
    if (styles.isMobile && displayLabel.contains(' ')) {
      displayLabel = displayLabel.replaceFirst(' ', '\n');
    }

    return SizedBox(
      width: styles.isMobile ? styles.containerSmall : styles.containerMedium,
      height: styles.isMobile ? styles.containerMicro : styles.containerSmall,
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              color: Theme.of(context).colorScheme.onSecondary,
              size: styles.isMobile ? styles.iconMicro : styles.iconSmall,
            ),
            const SizedBox(height: 10),
            Text(
              displayLabel,
              style: GoogleFonts.montserrat(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: styles.isMobile ? styles.fontMicro : styles.fontSmall,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
