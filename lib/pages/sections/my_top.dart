import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTop extends StatelessWidget {
  const MyTop({Key? key}) : super(key: key);

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
          key: GlobalKeys.topSectionKey,
          children: [
            _buildProfileImage(context, styles),
            const SizedBox(height: 10),
            _buildNameText(context, styles),
            _buildJobText(context, styles),
            const SizedBox(height: 10),
            _buildDownloadButton(context, styles),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context, StyleParams styles) {
    return Container(
      width: styles.imageSize,
      height: styles.imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 1,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/images/myPhoto.png',
          width: styles.imageSize,
          height: styles.imageSize,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNameText(BuildContext context, StyleParams styles) {
    return Text(
      me.toUpperCase(),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.megaSize,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    );
  }

  Widget _buildJobText(BuildContext context, StyleParams styles) {
    return Text(
      job.toUpperCase(),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.mediumSize,
      ),
    );
  }

  Widget _buildDownloadButton(BuildContext context, StyleParams styles) {
    return SizedBox(
      width: styles.buttonWidth,
      height: styles.buttonHeight,
      child: ElevatedButton(
        onPressed: () async {
          await launchUrl(AppConstants.uriPdf);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.all(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              styles.isMobile ? cvSmall : cvLarge,
              style: GoogleFonts.montserrat(
                color: Theme.of(context).colorScheme.primary,
                fontSize: styles.buttonFontSize,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              MingCuteIcons.mgc_arrow_to_down_fill,
              size: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
