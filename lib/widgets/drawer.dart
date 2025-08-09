import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/theme/theme_controller.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  final Function(GlobalKey) onScrollToSection;

  const MyDrawer({super.key, required this.onScrollToSection});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return Drawer(
      width: 240,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Image.asset(
              'assets/images/logo.png',
              width: 140,
              height: 140,
            ),
            const SizedBox(height: 10),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 10),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_user_4_line,
              title: drawerAboutMe,
              onTap: () {
                onScrollToSection(GlobalKeys.aboutMeSectionKey);
                Navigator.of(context).pop();
              },
              styles: styles,
            ),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_briefcase_line,
              title: drawerExperiences,
              onTap: () {
                onScrollToSection(GlobalKeys.experiencesSectionKey);
                Navigator.of(context).pop();
              },
              styles: styles,
            ),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_code_line,
              title: drawerProjects,
              onTap: () {
                onScrollToSection(GlobalKeys.projectsSectionKey);
                Navigator.of(context).pop();
              },
              styles: styles,
            ),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_backpack_line,
              title: drawerEducation,
              onTap: () {
                onScrollToSection(GlobalKeys.educationSectionKey);
                Navigator.of(context).pop();
              },
              styles: styles,
            ),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_user_info_line,
              title: drawerContacts,
              onTap: () {
                onScrollToSection(GlobalKeys.contactsSectionKey);
                Navigator.of(context).pop();
              },
              styles: styles,
            ),
            _drawerTile(
              context: context,
              icon: MingCuteIcons.mgc_palette_line,
              title: drawerTheme,
              onTap: () {},
              styles: styles,
              trailing: Transform.scale(
                scale: 0.8,
                child: Obx(
                  () {
                    final themeController = Get.find<ThemeController>();
                    return Switch(
                      value: themeController.isDark,
                      onChanged: (value) {
                        themeController.switchTheme();
                      },
                      activeColor: Theme.of(context).colorScheme.primary,
                      activeTrackColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withValues(alpha: 0.5),
                      inactiveThumbColor:
                          Theme.of(context).colorScheme.secondary,
                      inactiveTrackColor: Theme.of(context).colorScheme.primary,
                      trackOutlineColor:
                          WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.selected)) {
                            return Theme.of(context).colorScheme.onTertiary;
                          }
                          return Theme.of(context).colorScheme.onTertiary;
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
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
                            size: styles.iconSmall,
                            MingCuteIcons.mgc_mail_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(AppConstants.uriGithub);
                          },
                          icon: Icon(
                            size: styles.iconSmall,
                            MingCuteIcons.mgc_github_2_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await launchUrl(AppConstants.uriLinkedin);
                          },
                          icon: Icon(
                            size: styles.iconSmall,
                            MingCuteIcons.mgc_linkedin_fill,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      copyright,
                      style: GoogleFonts.montserrat(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: styles.fontMicro,
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

  Widget _drawerTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required StyleParams styles,
    Widget? trailing,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: styles.iconSmall,
        color: Theme.of(context).colorScheme.primary,
      ),
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          color: Theme.of(context).colorScheme.primary,
          fontSize: styles.fontSmall,
        ),
      ),
      onTap: onTap,
      trailing: trailing,
    );
  }
}
