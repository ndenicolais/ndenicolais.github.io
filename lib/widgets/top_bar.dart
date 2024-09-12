import 'package:flutter/material.dart';
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
    setState(() {
      isDarkMode = Theme.of(context).brightness == Brightness.dark;
    });

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Builder(
          builder: (context) {
            final bool isMobile = MediaQuery.of(context).size.width < 800;
            if (isMobile) {
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
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomFont',
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tTitle,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomFont',
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            widget.onScrollToSection(GlobalKeys.topSectionKey);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tTop,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomFont',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            widget
                                .onScrollToSection(GlobalKeys.aboutSectionKey);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tAbout,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomFont',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            widget
                                .onScrollToSection(GlobalKeys.skillsSectionKey);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tSkills,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomFont',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            widget
                                .onScrollToSection(GlobalKeys.worksSectionKey);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tWorks,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomFont',
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            widget.onScrollToSection(
                                GlobalKeys.projectsSectionKey);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            tProjects,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CustomFont',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
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
                          activeTrackColor: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.5),
                          inactiveTrackColor:
                              Theme.of(context).colorScheme.secondary,
                          thumbColor: WidgetStateColor.resolveWith(
                            (Set<WidgetState> states) {
                              if (states.contains(WidgetState.selected)) {
                                return Theme.of(context).colorScheme.secondary;
                              }
                              return Theme.of(context).colorScheme.primary;
                            },
                          ),
                          onChanged: (bool value) {
                            setState(
                              () {
                                isDarkMode = value;
                                Provider.of<ThemeNotifier>(context,
                                        listen: false)
                                    .switchTheme();
                              },
                            );
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
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
