import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/theme/app_colors.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String linkUrl;

  const CardItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.linkUrl,
  });

  void _showDescriptionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            description,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                MingCuteIcons.mgc_close_fill,
                color: AppColors.error,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 20,
                  ),
                ),
                Image.asset(
                  imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        MingCuteIcons.mgc_information_fill,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      iconSize: 32,
                      onPressed: () => _showDescriptionDialog(context),
                    ),
                    IconButton(
                      icon: Icon(
                        MingCuteIcons.mgc_github_2_fill,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      iconSize: 32,
                      onPressed: () => launchUrlString(linkUrl),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
