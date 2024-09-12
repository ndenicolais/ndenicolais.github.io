import 'package:flutter/material.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTop extends StatelessWidget {
  const MyTop({Key? key}) : super(key: key);

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    final Uri uriPdf = AppConstants.uriPdf;

    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double imageSize = screenWidth > 1200
            ? 220
            : screenWidth > 800
                ? 180
                : 150;
        double nameFontSize = screenWidth > 800 ? 40 : 28;
        double jobFontSize = screenWidth > 800 ? 24 : 18;
        double buttonWidth = screenWidth > 800 ? 160 : 120;
        double buttonHeight = screenWidth > 800 ? 50 : 40;
        double buttonFontSize = screenWidth > 800 ? 12 : 10;

        return Material(
          color: Theme.of(context).colorScheme.surface,
          child: Center(
            child: Column(
              children: [
                Container(
                  key: GlobalKeys.topSectionKey,
                  width: imageSize,
                  height: imageSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/myPhoto.png',
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  me.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: nameFontSize,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CustomFont',
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  job.toUpperCase(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: jobFontSize,
                    fontFamily: 'CustomFont',
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: buttonWidth,
                  height: buttonHeight,
                  child: ElevatedButton(
                    onPressed: () async {
                      await launchUrl(uriPdf);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.primary,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          download,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: buttonFontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          MingCuteIcons.mgc_arrow_to_down_fill,
                          size: 18,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
