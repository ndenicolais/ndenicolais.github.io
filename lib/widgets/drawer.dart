import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/theme/theme_notifier.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  final Function(GlobalKey) onScrollToSection;

  const MyDrawer({
    Key? key,
    required this.onScrollToSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 60),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: Icon(
                  size: 24,
                  MingCuteIcons.mgc_arrows_up_fill,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                dTop,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                onScrollToSection(GlobalKeys.topSectionKey);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                  size: 24,
                  MingCuteIcons.mgc_user_4_fill,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                dAbout,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                onScrollToSection(GlobalKeys.aboutSectionKey);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                  size: 24,
                  MingCuteIcons.mgc_briefcase_fill,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                dWorks,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                onScrollToSection(GlobalKeys.worksSectionKey);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                  size: 24,
                  MingCuteIcons.mgc_code_fill,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                dProjects,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                onScrollToSection(GlobalKeys.projectsSectionKey);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                  size: 24,
                  MingCuteIcons.mgc_palette_fill,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                dTheme,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontFamily: 'CustomFont',
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .switchTheme();
                },
                child: Switch(
                  value: Provider.of<ThemeNotifier>(context).isDarkMode,
                  onChanged: (value) {
                    Provider.of<ThemeNotifier>(context, listen: false)
                        .switchTheme();
                  },
                  activeColor: Theme.of(context).colorScheme.primary,
                  activeTrackColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  inactiveThumbColor: Theme.of(context).colorScheme.secondary,
                  inactiveTrackColor: Theme.of(context).colorScheme.primary,
                  trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                      if (states.contains(WidgetState.selected)) {
                        return Theme.of(context).colorScheme.onTertiary;
                      }
                      return Theme.of(context).colorScheme.onTertiary;
                    },
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await launchUrl(AppConstants.uriMail);
                          },
                          icon: Icon(
                            size: 24,
                            MingCuteIcons.mgc_mail_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(AppConstants.uriGithub);
                          },
                          icon: Icon(
                            size: 24,
                            MingCuteIcons.mgc_github_2_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(AppConstants.uriLinkedin);
                          },
                          icon: Icon(
                            size: 24,
                            MingCuteIcons.mgc_linkedin_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      copyright,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 12,
                        fontFamily: 'CustomFont',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
