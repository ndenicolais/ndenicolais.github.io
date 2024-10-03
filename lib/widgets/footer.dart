import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    if (styles.isMobile) {
      return Container(
        color: Theme.of(context).colorScheme.secondary,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: styles.padding),
        child: Center(
          child: Text(
            copyright,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.primary,
              fontSize: styles.smallSize,
            ),
          ),
        ),
      );
    }

    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: styles.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildInfoRow(context, MingCuteIcons.mgc_home_6_fill, fHome,
                  styles.iconSize, styles.textFontSize),
              SizedBox(width: styles.contactSpacing),
              _buildInfoRow(context, MingCuteIcons.mgc_phone_fill, fPhone,
                  styles.iconSize, styles.textFontSize),
              SizedBox(width: styles.contactSpacing),
              _buildInfoRow(context, MingCuteIcons.mgc_mail_fill, fMail,
                  styles.iconSize, styles.textFontSize),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildIconButton(context, AppConstants.uriMail,
                  MingCuteIcons.mgc_mail_send_fill, fEmail, styles.iconSize),
              SizedBox(width: styles.contactSpacing),
              _buildIconButton(context, AppConstants.uriGithub,
                  MingCuteIcons.mgc_github_2_fill, fGithub, styles.iconSize),
              SizedBox(width: styles.contactSpacing),
              _buildIconButton(context, AppConstants.uriLinkedin,
                  MingCuteIcons.mgc_linkedin_fill, fLinkedin, styles.iconSize),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            copyright,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.primary,
              fontSize: styles.smallSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, IconData icon, String text,
      double iconSize, double textFontSize) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.primary,
            fontSize: textFontSize,
          ),
        ),
      ],
    );
  }

  Widget _buildIconButton(BuildContext context, Uri uri, IconData icon,
      String tooltip, double iconSize) {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: () async {
          await launchUrl(uri);
        },
        icon: Icon(
          icon,
          size: iconSize,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
