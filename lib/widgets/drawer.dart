import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/providers/theme_notifier.dart';
import 'package:ndenicolais/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  final bool isDarkMode;
  final ThemeNotifier themeNotifier;
  final Uri uriMail = Uri(
    scheme: 'mailto',
    path: 'n.denicolais@outlook.it',
  );
  final Uri uriLinkedin =
      Uri.parse('https://it.linkedin.com/in/nicoladenicolais');
  final Uri uriGithub = Uri.parse('https://github.com/ndenicolais');

  MyDrawer({super.key, required this.isDarkMode, required this.themeNotifier});

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
                  color: Theme.of(context).colorScheme.primary,
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
                  size: 14,
                  FontAwesomeIcons.house,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.home);
              },
            ),
            ListTile(
              leading: Icon(
                  size: 14,
                  FontAwesomeIcons.briefcase,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                'Works',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.works);
              },
            ),
            ListTile(
              leading: Icon(
                  size: 14,
                  FontAwesomeIcons.code,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                'Projects',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.projects);
              },
            ),
            ListTile(
              leading: Icon(
                  size: 14,
                  FontAwesomeIcons.palette,
                  color: Theme.of(context).colorScheme.primary),
              title: Text(
                'Theme',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                  themeNotifier.toggleTheme();
                },
                child: Switch.adaptive(
                  value: isDarkMode,
                  onChanged: (value) {
                    themeNotifier.toggleTheme();
                  },
                  activeColor: Theme.of(context).colorScheme.primary,
                  activeTrackColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  inactiveThumbColor: Theme.of(context).colorScheme.secondary,
                  inactiveTrackColor: Theme.of(context).colorScheme.primary,
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
                            await launchUrl(uriMail);
                          },
                          icon: Icon(
                            size: 14,
                            FontAwesomeIcons.envelope,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(uriGithub);
                          },
                          icon: Icon(
                            size: 14,
                            FontAwesomeIcons.github,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(uriLinkedin);
                          },
                          icon: Icon(
                            size: 14,
                            FontAwesomeIcons.linkedinIn,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '© 2023 Nicola De Nicolais',
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
