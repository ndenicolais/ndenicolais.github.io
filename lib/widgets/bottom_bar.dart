import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return Container(
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
