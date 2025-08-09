import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/theme/theme_controller.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/style.dart';

class TopBar extends StatefulWidget {
  final Function(GlobalKey) onScrollToSection;

  const TopBar({super.key, required this.onScrollToSection});

  @override
  TopBarState createState() => TopBarState();
}

class TopBarState extends State<TopBar> {
  bool isDarkMode = false;
  final List<bool> _isHovering = List<bool>.filled(6, false);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Builder(
          builder: (context) {
            return styles.isMobile
                ? _buildMobileTopBar(context, styles)
                : _buildDesktopTopBar(context, styles);
          },
        ),
      ),
    );
  }

  Widget _buildMobileTopBar(BuildContext context, StyleParams styles) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            MingCuteIcons.mgc_menu_fill,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        Expanded(
          child: Text(
            topDrawer,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: styles.fontMedium,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopTopBar(BuildContext context, StyleParams styles) {
    final navItems = [
      [topAboutMe, GlobalKeys.aboutMeSectionKey],
      [topServices, GlobalKeys.servicesSectionKey],
      [topSkillset, GlobalKeys.skillsSectionKey],
      [topExperiences, GlobalKeys.experiencesSectionKey],
      [topProjects, GlobalKeys.projectsSectionKey],
      [topEducation, GlobalKeys.educationSectionKey],
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            topTitle,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: styles.fontMedium,
              fontWeight: FontWeight.w600,
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < navItems.length; i++)
                _buildNavTextButton(
                  navItems[i][0] as String,
                  navItems[i][1] as GlobalKey,
                  context,
                  i,
                  styles,
                ),
              const SizedBox(width: 12),
              _buildThemeSwitcher(context, styles),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavTextButton(String label, GlobalKey key, BuildContext context,
      int index, StyleParams styles) {
    final colorScheme = Theme.of(context).colorScheme;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering[index] = true),
      onExit: (_) => setState(() => _isHovering[index] = false),
      child: GestureDetector(
        onTap: () => widget.onScrollToSection(key),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              color: _isHovering[index]
                  ? colorScheme.tertiary
                  : colorScheme.secondary,
              fontSize: styles.fontSmall,
              fontWeight: FontWeight.w600,
              decoration: _isHovering[index]
                  ? TextDecoration.underline
                  : TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThemeSwitcher(BuildContext context, StyleParams styles) {
    return Row(
      children: [
        Icon(
          MingCuteIcons.mgc_sun_fill,
          size: styles.iconSmall,
          color: isDarkMode
              ? Colors.grey
              : Theme.of(context).colorScheme.secondary,
        ),
        Obx(
          () {
            final themeController = Get.find<ThemeController>();
            return Switch(
              value: themeController.isDark,
              onChanged: (value) {
                themeController.switchTheme();
              },
              activeColor: Theme.of(context).colorScheme.secondary,
              activeTrackColor: Theme.of(context)
                  .colorScheme
                  .secondary
                  .withValues(alpha: 0.5),
              inactiveTrackColor: Theme.of(context).colorScheme.secondary,
              thumbColor: WidgetStateColor.resolveWith(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return Theme.of(context).colorScheme.secondary;
                  }
                  return Theme.of(context).colorScheme.primary;
                },
              ),
            );
          },
        ),
        Icon(
          MingCuteIcons.mgc_moon_fill,
          size: styles.iconSmall,
          color: isDarkMode
              ? Theme.of(context).colorScheme.secondary
              : Colors.grey,
        ),
      ],
    );
  }
}
