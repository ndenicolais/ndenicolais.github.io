import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/animated_role_text.dart';
import 'package:myportfolio/widgets/divider_title.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

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
          key: GlobalKeys.aboutMeSectionKey,
          children: [
            DividerTitle(text: aboutMeTitle, styles: styles),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12,
              ),
              child: styles.isMobile
                  ? _buildMobileLayout(context, styles)
                  : _buildDesktopLayout(context, styles),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, StyleParams styles) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildProfileImage(context, styles),
        const SizedBox(height: 10),
        _buildProfileName(context, styles),
        AnimatedProfileRole(styles: styles),
        const SizedBox(height: 10),
        _buildDownloadButton(context, styles),
        const SizedBox(height: 10),
        _buildDescription(context, styles),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context, StyleParams styles) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileImage(context, styles),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                _buildProfileName(context, styles),
                AnimatedProfileRole(styles: styles),
                const SizedBox(height: 10),
                _buildDownloadButton(context, styles),
                const SizedBox(height: 10),
                _buildDescription(context, styles),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileImage(BuildContext context, StyleParams styles) {
    if (styles.isMobile) {
      return Image.asset(
        'assets/images/me_nobg.png',
        width: styles.imageMedium,
        height: styles.imageMedium,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        'assets/images/me_nobg.png',
        width: styles.imageLarge,
        height: styles.imageLarge,
        fit: BoxFit.cover,
      );
    }
  }

  Widget _buildProfileName(BuildContext context, StyleParams styles) {
    return Text(
      me.toUpperCase(),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.isMobile ? styles.fontLarge : styles.fontMega,
        fontWeight: FontWeight.w600,
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
          foregroundColor: Theme.of(context).colorScheme.secondary,
          backgroundColor: Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
              width: 1.5,
            ),
          ),
          padding: const EdgeInsets.all(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              styles.isMobile ? aboutMeCvSmall : aboutMeCvLarge,
              style: GoogleFonts.montserrat(fontSize: styles.buttonFontSize),
            ),
            const SizedBox(width: 8),
            Icon(MingCuteIcons.mgc_arrow_to_down_fill, size: styles.iconMicro),
          ],
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context, StyleParams styles) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: styles.isMobile ? styles.containerMedium : styles.containerMega,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            aboutMeDes,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: styles.fontSmall,
            ),
          ),
        ],
      ),
    );
  }
}
