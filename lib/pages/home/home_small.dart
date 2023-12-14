import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:ndenicolais/widgets/bottom_bar.dart';
import 'package:ndenicolais/widgets/top_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageSmall extends StatelessWidget {
  const HomePageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri uriPdf = Uri.parse(
        'https://drive.google.com/file/d/1lN1opIY6BbQkqM8DHkm0QMASYaq9G3v5/view?usp=sharing');

    return PopScope(
      canPop: false,
      child: Material(
        child: ListView(
          children: [
            const MyTopBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NICOLA\nDE NICOLAIS',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' MOBILE APP DEVELOPER',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15,
                          fontFamily: 'CustomFont',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/myPhoto.png',
                          width: 120,
                          height: 120,
                        ),
                        const SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT ME',
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 14,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 80,
                    height: 30,
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        await launchUrl(uriPdf);
                      },
                      icon: Icon(
                        FontAwesomeIcons.download,
                        size: 14,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      label: Text(
                        'CV',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).colorScheme.primary,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.all(6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'EDUCAZIONE',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 50,
                                  endIndent: 50,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Diploma scientifico",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Liceo Scientifico Rummo di Benevento",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Laurea triennale in\nIngegneria Informatica",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Università Guglielmo Marconi di Roma",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'LINGUE',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 50,
                                  endIndent: 50,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/italian.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 4),
                                    SizedBox(
                                      width: 100,
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .onTertiary,
                                        minHeight: 10,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Theme.of(context)
                                                    .colorScheme
                                                    .tertiary),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/english.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 4),
                                    SizedBox(
                                      width: 100,
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        value: 0.7,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .onTertiary,
                                        minHeight: 10,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Theme.of(context)
                                                    .colorScheme
                                                    .tertiary),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Certificazione di lingua inglese B2",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "2008 | Trinity Hall College di Dublino",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "2007 | Goldsmiths College di Londra",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'CODING',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 50,
                                  endIndent: 50,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/flutter.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "Flutter",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/dart.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "Dart",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/typescript.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "TypeScript",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/html.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "HTML",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/compose.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "Compose",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/kotlin.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "Kotlin",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/javascript.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "JavaScript",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/images/development/css.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "CSS",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontFamily: 'CustomFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.all(16),
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'SKILLS',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 50,
                                  endIndent: 50,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Attenzione ai dettagli",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Problem solving",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Precisione",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Propensione all'innovazione",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Capacià di lavorare in team",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Adattabilità",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            MyBottomBar(),
          ],
        ),
      ),
    );
  }
}
