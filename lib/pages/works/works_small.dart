import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/providers/theme_notifier.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:ndenicolais/widgets/drawer.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksPageSmall extends StatefulWidget {
  const WorksPageSmall({super.key});

  @override
  WorksPageSmallState createState() => WorksPageSmallState();
}

class WorksPageSmallState extends State<WorksPageSmall> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeNotifier.currentTheme == ThemeNotifier.darkTheme;
    final Uri uriDiggerly = Uri.parse('https://rsi-na.it/diggerly/');
    final Uri uriReasset =
        Uri.parse('https://rsi-na.it/progetto-di-ricerca-reasset/');
    final Uri uriCads = Uri.parse('https://rsi-na.it/progetto-cads/');

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          'ndenicolais',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'CustomFont',
          ),
        ),
      ),
      drawer: MyDrawer(isDarkMode: isDarkMode, themeNotifier: themeNotifier),
      body: Material(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MY',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'WORKS',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Divider(
                    thickness: 1,
                    indent: 35,
                    endIndent: 35,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'My works experience',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18,
                      fontFamily: 'CustomFont',
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Arethusa Srl',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  'Software Developer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    '2022-Present',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont',
                                    ),
                                  ),
                                ),
                                Text(
                                  arethusa,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  'DIGGERly',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  diggerly,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: ElevatedButton.icon(
                                    onPressed: () async {
                                      await launchUrl(uriDiggerly);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.link,
                                      size: 14,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    label: Text(
                                      'Link',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'CustomFont'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'ReASSET',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  reasset,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: ElevatedButton.icon(
                                    onPressed: () async {
                                      await launchUrl(uriReasset);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.link,
                                      size: 14,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    label: Text(
                                      'Link',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'CustomFont'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  'CADS',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  cads,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 30,
                                  child: ElevatedButton.icon(
                                    onPressed: () async {
                                      await launchUrl(uriCads);
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.link,
                                      size: 14,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                    label: Text(
                                      'Link',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'CustomFont'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 22),
                                Text(
                                  'Studio Fotografico Rosati Studio',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  'Assitente fotografo',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  height: 30,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    '2015',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'CustomFont'),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  rosati,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontFamily: 'CustomFont'),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Okaidi',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  'Addetto inventario',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  height: 30,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    '2010',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'CustomFont'),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  okaidi,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontFamily: 'CustomFont'),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Benevento Città Spettacolo',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                Text(
                                  'Steward eventi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  height: 30,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    '2009, 2010, 2011',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'CustomFont'),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  spettacolo,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontFamily: 'CustomFont'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
