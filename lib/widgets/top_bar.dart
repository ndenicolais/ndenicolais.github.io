import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/routes.dart';
import 'package:my_portfolio/providers/theme_notifier.dart';
import 'package:my_portfolio/utils/responsive_layout.dart';
import 'package:provider/provider.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({super.key});

  @override
  MyTopBarState createState() => MyTopBarState();
}

class MyTopBarState extends State<MyTopBar> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isSmallScreen(context)
        ? AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            title: Text(
              'My Portfolio',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'CustomFont',
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      isDarkMode = !isDarkMode;
                    },
                  );

                  Provider.of<ThemeNotifier>(context, listen: false)
                      .toggleTheme();
                },
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: isDarkMode
                      ? Icon(
                          FontAwesomeIcons.moon,
                          key: ValueKey<bool>(isDarkMode),
                          size: 14,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          FontAwesomeIcons.sun,
                          key: ValueKey<bool>(isDarkMode),
                          size: 14,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                ),
              ),
              PopupMenuButton(
                icon: Icon(Icons.menu,
                    color: Theme.of(context).colorScheme.onPrimary),
                onSelected: (value) {
                  // Implement the logic for each menu item
                  if (value == 'menuItem1') {
                    Navigator.of(context).pushReplacementNamed(Routes.home);
                  } else if (value == 'menuItem2') {
                    Navigator.of(context).pushNamed(Routes.works);
                  } else if (value == 'menuItem3') {
                    Navigator.of(context).pushNamed(Routes.projects);
                  }
                },
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    value: 'menuItem1',
                    child: Column(
                      children: [
                        Icon(
                            size: 14,
                            FontAwesomeIcons.house,
                            color: Theme.of(context).colorScheme.primary),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        Divider(color: Theme.of(context).colorScheme.primary),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'menuItem2',
                    child: Column(
                      children: [
                        Icon(
                            size: 14,
                            FontAwesomeIcons.briefcase,
                            color: Theme.of(context).colorScheme.primary),
                        Text(
                          'Works',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        Divider(color: Theme.of(context).colorScheme.primary),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'menuItem3',
                    child: Column(
                      children: [
                        Icon(
                            size: 14,
                            FontAwesomeIcons.code,
                            color: Theme.of(context).colorScheme.primary),
                        Text(
                          'Projects',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CustomFont',
                          ),
                        ),
                        Divider(color: Theme.of(context).colorScheme.primary),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        : Container(
            height: 70.0,
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Portfolio',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CustomFont'),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(Routes.home);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Text(
                        'Home',
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
                        Navigator.of(context).pushNamed(Routes.works);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Text(
                        'Works',
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
                        Navigator.of(context).pushNamed(Routes.projects);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Text(
                        'Projects',
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
                      FontAwesomeIcons.sun,
                      size: 24,
                      color: isDarkMode
                          ? Colors.grey
                          : Theme.of(context).colorScheme.primary,
                    ),
                    Switch(
                      value: isDarkMode,
                      activeColor: Theme.of(context).colorScheme.primary,
                      activeTrackColor: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                      inactiveTrackColor: Theme.of(context).colorScheme.primary,
                      thumbColor: MaterialStateColor.resolveWith(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return Theme.of(context).colorScheme.primary;
                        }
                        return Theme.of(context).colorScheme.secondary;
                      }),
                      onChanged: (bool value) {
                        setState(() {
                          isDarkMode = value;
                          Provider.of<ThemeNotifier>(context, listen: false)
                              .toggleTheme();
                        });
                      },
                    ),
                    Icon(
                      FontAwesomeIcons.moon,
                      size: 24,
                      color: isDarkMode
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
