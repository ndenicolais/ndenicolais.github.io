import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/routes.dart';
import 'package:ndenicolais/providers/theme_notifier.dart';
import 'package:provider/provider.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({super.key});

  @override
  MyTopBarState createState() => MyTopBarState();
}

class MyTopBarState extends State<MyTopBar> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      isDarkMode = Theme.of(context).brightness == Brightness.dark;
    });

    return Container(
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
                  Navigator.of(context).pushNamed(Routes.home);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
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
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
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
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
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
                activeTrackColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.5),
                inactiveTrackColor: Theme.of(context).colorScheme.primary,
                thumbColor:
                    MaterialStateColor.resolveWith((Set<MaterialState> states) {
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
