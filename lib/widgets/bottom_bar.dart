import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBottomBar extends StatelessWidget {
  final Uri uriMail = Uri(
    scheme: 'mailto',
    path: 'n.denicolais@outlook.it',
  );
  final Uri uriLinkedin =
      Uri.parse('https://it.linkedin.com/in/nicoladenicolais');
  final Uri uriGithub = Uri.parse('https://github.com/ndenicolais');

  MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? Container(
            color: Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.house,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Benevento, IT',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.phone,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '+39 3888605458',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.envelope,
                              size: 14,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'n.denicolais@outlook.it',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontFamily: 'CustomFont',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            await launchUrl(uriLinkedin);
                          },
                          icon: Icon(
                            size: 14,
                            FontAwesomeIcons.github,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(uriGithub);
                          },
                          icon: Icon(
                            size: 14,
                            FontAwesomeIcons.linkedinIn,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '© 2023 Nicola De Nicolais.',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 12,
                    fontFamily: 'CustomFont',
                  ),
                ),
              ],
            ),
          )
        : Container(
            color: Theme.of(context).colorScheme.secondary,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.house,
                          size: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Benevento, IT',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.phone,
                          size: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '+39 3888605458',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.envelope,
                          size: 24,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'n.denicolais@outlook.it',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Tooltip(
                      message: 'Email',
                      child: IconButton(
                        onPressed: () async {
                          await launchUrl(uriMail);
                        },
                        icon: Icon(
                          size: 24,
                          FontAwesomeIcons.envelope,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Tooltip(
                      message: 'GitHub',
                      child: IconButton(
                        onPressed: () async {
                          await launchUrl(uriGithub);
                        },
                        icon: Icon(
                          size: 24,
                          FontAwesomeIcons.github,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Tooltip(
                      message: 'LinkedIn',
                      child: IconButton(
                        onPressed: () async {
                          await launchUrl(uriLinkedin);
                        },
                        icon: Icon(
                          size: 24,
                          FontAwesomeIcons.linkedinIn,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '© 2023 Nicola De Nicolais. All rights reserved.',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 14,
                    fontFamily: 'CustomFont',
                  ),
                ),
              ],
            ),
          );
  }
}
