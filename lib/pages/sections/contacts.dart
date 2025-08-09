import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/contact_card.dart';
import 'package:myportfolio/widgets/divider_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    if (styles.isMobile) {
      return Container(
        key: GlobalKeys.contactsSectionKey,
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DividerTitle(text: contactsTitle, styles: styles),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(MingCuteIcons.mgc_location_2_fill),
                  color: Theme.of(context).colorScheme.secondary,
                  iconSize: styles.iconSmall,
                  tooltip: cLocationLabel,
                  onPressed: () => launchUrl(AppConstants.uriLocation),
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: Icon(MingCuteIcons.mgc_phone_fill),
                  color: Theme.of(context).colorScheme.secondary,
                  iconSize: styles.iconSmall,
                  tooltip: cPhoneLabel,
                  onPressed: () => launchUrl(AppConstants.uriPhone),
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: Icon(MingCuteIcons.mgc_mail_fill),
                  color: Theme.of(context).colorScheme.secondary,
                  iconSize: styles.iconSmall,
                  tooltip: cMailLabel,
                  onPressed: () => launchUrl(AppConstants.uriMail),
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: Icon(MingCuteIcons.mgc_github_fill),
                  color: Theme.of(context).colorScheme.secondary,
                  iconSize: styles.iconSmall,
                  tooltip: cGithubLabel,
                  onPressed: () => launchUrl(AppConstants.uriGithub),
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: Icon(MingCuteIcons.mgc_linkedin_fill),
                  color: Theme.of(context).colorScheme.secondary,
                  iconSize: styles.iconSmall,
                  tooltip: cLinkedinLabel,
                  onPressed: () => launchUrl(AppConstants.uriLinkedin),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          key: GlobalKeys.contactsSectionKey,
          children: [
            DividerTitle(text: contactsTitle, styles: styles),
            const SizedBox(height: 10),
            _buildContactsBody(context, styles),
          ],
        ),
      ),
    );
  }

  Widget _buildContactsBody(BuildContext context, StyleParams styles) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: styles.spacing,
      runSpacing: styles.runSpacing,
      children: [
        ContactCard(
          icon: MingCuteIcons.mgc_location_2_fill,
          label: cLocationLabel,
          value: cLocationValue,
          onTap: () => launchUrl(AppConstants.uriLocation),
        ),
        ContactCard(
          icon: MingCuteIcons.mgc_phone_fill,
          label: cPhoneLabel,
          value: cPhoneValue,
          onTap: () => launchUrl(AppConstants.uriPhone),
        ),
        ContactCard(
          icon: MingCuteIcons.mgc_mail_fill,
          label: cMailLabel,
          value: cMailValue,
          onTap: () => launchUrl(AppConstants.uriMail),
        ),
        ContactCard(
          icon: MingCuteIcons.mgc_github_fill,
          label: cGithubLabel,
          value: cGithubValue,
          onTap: () => launchUrl(AppConstants.uriGithub),
        ),
        ContactCard(
          icon: MingCuteIcons.mgc_linkedin_fill,
          label: cLinkedinLabel,
          value: cLinkedinValue,
          onTap: () => launchUrl(AppConstants.uriLinkedin),
        ),
      ],
    );
  }
}
