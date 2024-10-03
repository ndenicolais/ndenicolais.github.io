import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:provider/provider.dart';
import 'package:myportfolio/theme/theme_notifier.dart';
import 'package:myportfolio/utils/globals.dart';

class MyTopBar extends StatefulWidget {
  final Function(GlobalKey) onScrollToSection;

  const MyTopBar({Key? key, required this.onScrollToSection}) : super(key: key);

  @override
  MyTopBarState createState() => MyTopBarState();
}

class MyTopBarState extends State<MyTopBar> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Builder(
          builder: (context) {
            final bool isMobile = MediaQuery.of(context).size.width < 800;
            return isMobile
                ? _buildMobileTopBar(context)
                : _buildDesktopTopBar(context);
          },
        ),
      ),
    );
  }

  Widget _buildMobileTopBar(BuildContext context) {
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
            tDrawer,
            style: _titleStyle(context, 18),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopTopBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tTitle,
            style: _titleStyle(context, 20),
          ),
          Row(
            children: [
              _buildNavButton(tTop, GlobalKeys.topSectionKey, context),
              _buildNavButton(tAbout, GlobalKeys.bioSectionKey, context),
              _buildNavButton(tSkills, GlobalKeys.skillsSectionKey, context),
              _buildNavButton(tWorks, GlobalKeys.worksSectionKey, context),
              _buildNavButton(
                  tProjects, GlobalKeys.projectsSectionKey, context),
              const SizedBox(width: 16),
              _buildThemeSwitcher(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String label, GlobalKey key, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ElevatedButton(
        onPressed: () => widget.onScrollToSection(key),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          side: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: _buttonStyle(context),
        ),
      ),
    );
  }

  Widget _buildThemeSwitcher(BuildContext context) {
    return Row(
      children: [
        Icon(
          MingCuteIcons.mgc_sun_fill,
          size: 24,
          color: isDarkMode
              ? Colors.grey
              : Theme.of(context).colorScheme.secondary,
        ),
        Switch(
          value: isDarkMode,
          activeColor: Theme.of(context).colorScheme.secondary,
          activeTrackColor:
              Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          inactiveTrackColor: Theme.of(context).colorScheme.secondary,
          thumbColor: WidgetStateColor.resolveWith(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return Theme.of(context).colorScheme.secondary;
              }
              return Theme.of(context).colorScheme.primary;
            },
          ),
          onChanged: (bool value) {
            setState(() {
              isDarkMode = value;
              Provider.of<ThemeNotifier>(context, listen: false).switchTheme();
            });
          },
        ),
        Icon(
          MingCuteIcons.mgc_moon_fill,
          size: 24,
          color: isDarkMode
              ? Theme.of(context).colorScheme.secondary
              : Colors.grey,
        ),
      ],
    );
  }

  TextStyle _titleStyle(BuildContext context, double fontSize) {
    return GoogleFonts.montserrat(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle _buttonStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }
}
