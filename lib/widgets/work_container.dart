import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkContainer extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const WorkContainer({
    Key? key,
    required this.title,
    required this.description,
    required this.url,
  }) : super(key: key);

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double containerWidth = screenWidth > 800 ? 320 : screenWidth * 0.9;
        double titleFontSize = screenWidth > 800 ? 24 : 18;
        double descriptionFontSize = screenWidth > 800 ? 16 : 14;
        double buttonFontSize = screenWidth > 800 ? 14 : 12;

        return Container(
          padding: const EdgeInsets.all(8),
          width: containerWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: titleFontSize,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CustomFont',
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: descriptionFontSize,
                  color: Theme.of(context).colorScheme.secondary,
                  fontFamily: 'CustomFont',
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    _launchUrl(url);
                  },
                  icon: Icon(
                    MingCuteIcons.mgc_link_2_fill,
                    size: buttonFontSize,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  label: Text(
                    link,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: buttonFontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CustomFont',
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
