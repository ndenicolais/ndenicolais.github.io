import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:ndenicolais/widgets/bottom_bar.dart';
import 'package:ndenicolais/widgets/top_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageLarge extends StatelessWidget {
  const HomePageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri uriPdf = Uri.parse(
        'https://drive.google.com/file/d/121DzheH806LYd9T3wsXurMPIiUk2-kAS/view?usp=drive_link');

    return PopScope(
      canPop: false,
      child: Material(
        child: ListView(
          children: [
            const MyTopBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
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
                          fontSize: 140,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' SOFTWARE DEVELOPER',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 30,
                          fontFamily: 'CustomFont',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Divider(
                    thickness: 1,
                    indent: 250,
                    endIndent: 250,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 320),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/myPhoto.png',
                          width: 250,
                          height: 250,
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ABOUT ME',
                                style: TextStyle(
                                  fontSize: 30,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  fontSize: 16,
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
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        await launchUrl(uriPdf);
                      },
                      icon: Icon(
                        FontAwesomeIcons.download,
                        size: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      label: Text(
                        'CV',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
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
                        padding: const EdgeInsets.all(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Divider(
                    thickness: 1,
                    indent: 250,
                    endIndent: 250,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(24),
                            width: 500,
                            height: 280,
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
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 120,
                                  endIndent: 120,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Diploma scientifico",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Liceo Scientifico Rummo di Benevento",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Laurea triennale in\nIngegneria Informatica",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Università Guglielmo Marconi di Roma",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(24),
                            width: 500,
                            height: 280,
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
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 120,
                                  endIndent: 120,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/italian.png',
                                      width: 30,
                                      height: 30,
                                    ),
                                    const SizedBox(width: 4),
                                    SizedBox(
                                      width: 200,
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
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
                                      width: 30,
                                      height: 30,
                                    ),
                                    const SizedBox(width: 4),
                                    SizedBox(
                                      width: 200,
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        value: 0.7,
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
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
                                const SizedBox(height: 8),
                                Text(
                                  "Certificazione di lingua inglese B2",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "2008 | Trinity Hall College di Dublino",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "2007 | Goldsmiths College di Londra",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(24),
                              width: 500,
                              height: 280,
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
                                      fontSize: 24,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont',
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    indent: 120,
                                    endIndent: 120,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                  const SizedBox(height: 8),
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "Flutter",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "Dart",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "TypeScript",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "HTML",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "Compose",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "Kotlin",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "JavaScript",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                                                width: 28,
                                                height: 28,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                "CSS",
                                                style: TextStyle(
                                                  fontSize: 16,
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
                              )),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(24),
                            width: 500,
                            height: 280,
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
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 120,
                                  endIndent: 120,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "Attenzione ai dettagli",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Problem solving",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Precisione",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Propensione all'innovazione",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Capacià di lavorare in team",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                                Text(
                                  "Adattabilità",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
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
