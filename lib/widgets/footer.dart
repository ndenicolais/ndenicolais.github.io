import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double padding = screenWidth > 1200
            ? 420 // Web o tablet grandi
            : screenWidth > 800
                ? 120 // Tablet
                : 20; // Telefono

        double iconSize = screenWidth > 800 ? 30 : 24;
        double textFontSize = screenWidth > 800 ? 18 : 14;
        double smallTextFontSize = screenWidth > 800 ? 16 : 12;
        double contactSpacing = screenWidth > 800 ? 12 : 6;

        if (screenWidth <= 800) {
          return Container(
            color: Theme.of(context).colorScheme.secondary,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: padding),
            child: Center(
              child: Text(
                copyright,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: smallTextFontSize,
                  fontFamily: 'CustomFont',
                ),
              ),
            ),
          );
        }

        return Container(
          color: Theme.of(context).colorScheme.secondary,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildInfoRow(context, MingCuteIcons.mgc_home_6_fill, fHome,
                      iconSize, textFontSize),
                  SizedBox(width: contactSpacing),
                  _buildInfoRow(context, MingCuteIcons.mgc_phone_fill, fPhone,
                      iconSize, textFontSize),
                  SizedBox(width: contactSpacing),
                  _buildInfoRow(context, MingCuteIcons.mgc_mail_fill, fMail,
                      iconSize, textFontSize),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildIconButton(context, AppConstants.uriMail,
                      MingCuteIcons.mgc_mail_send_fill, fEmail, iconSize),
                  SizedBox(width: contactSpacing),
                  _buildIconButton(context, AppConstants.uriGithub,
                      MingCuteIcons.mgc_github_2_fill, fGithub, iconSize),
                  SizedBox(width: contactSpacing),
                  _buildIconButton(context, AppConstants.uriLinkedin,
                      MingCuteIcons.mgc_linkedin_fill, fLinkedin, iconSize),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                copyright,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: smallTextFontSize,
                  fontFamily: 'CustomFont',
                ),
              ),
            ],
          ),
        );
      },
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
          style: TextStyle(
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
