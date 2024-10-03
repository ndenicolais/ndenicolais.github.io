import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkContainer extends StatelessWidget {
  final String title;
  final String description;
  final Uri url;

  const WorkContainer({
    Key? key,
    required this.title,
    required this.description,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);
    double containerWidth = screenWidth > 800 ? 320 : screenWidth * 0.9;

    return Container(
      padding: const EdgeInsets.all(8),
      width: containerWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context, styles),
          const SizedBox(height: 8),
          _buildDescription(context, styles),
          const SizedBox(height: 8),
          _buildActionButton(context, styles),
        ],
      ),
    );
  }

  Text _buildTitle(BuildContext context, StyleParams styles) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: styles.largeSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text _buildDescription(BuildContext context, StyleParams styles) {
    return Text(
      description,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.smallSize,
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, StyleParams styles) {
    return SizedBox(
      width: 100,
      height: 40,
      child: styles.isMobile
          ? _buildIconButton(context, styles)
          : _buildElevatedButton(context, styles),
    );
  }

  Widget _buildIconButton(BuildContext context, StyleParams styles) {
    return IconButton(
      onPressed: () async {
        await launchUrl(url);
      },
      icon: Icon(
        MingCuteIcons.mgc_external_link_fill,
        size: styles.buttonFontSize,
        color: Theme.of(context).colorScheme.primary,
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  Widget _buildElevatedButton(BuildContext context, StyleParams styles) {
    return ElevatedButton.icon(
      onPressed: () async {
        await launchUrl(url);
      },
      icon: Icon(
        MingCuteIcons.mgc_link_2_fill,
        size: styles.buttonFontSize,
        color: Theme.of(context).colorScheme.primary,
      ),
      label: Text(
        link,
        style: GoogleFonts.montserrat(
          color: Theme.of(context).colorScheme.primary,
          fontSize: styles.buttonFontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
