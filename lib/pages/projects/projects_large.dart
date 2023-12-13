import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/strings.dart';
import 'package:my_portfolio/widgets/bottom_bar.dart';
import 'package:my_portfolio/widgets/p_compose_card.dart';
import 'package:my_portfolio/widgets/p_flutter_card.dart';
import 'package:my_portfolio/widgets/p_react_card.dart';
import 'package:my_portfolio/widgets/p_xml_card.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectsPageLarge extends StatelessWidget {
  const ProjectsPageLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
                      'MY',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 140,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomFont',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'PROJECTS',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 140,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomFont',
                      ),
                      textAlign: TextAlign.start,
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
                Text(
                  'My developer experience',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 24,
                    fontFamily: 'CustomFont',
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 320),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Languages & Tools',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/development/flutter.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/dart.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/compose.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/kotlin.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/javascript.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/typescript.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/html.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/css.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/react.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/java.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/mongodb.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/images/development/firebase.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Text(
                                'GitHub',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Text(
                                github,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                      'https://github.com/ndenicolais');
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Image.asset(
                                    'assets/images/github.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Applicazioni mobile',
                                style: TextStyle(
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                android,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'Multi-platform',
                                style: TextStyle(
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                'Flutter',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                flutter,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              const FlutterCards(),
                              const SizedBox(height: 40),
                              Text(
                                'Android',
                                style: TextStyle(
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                'Jetpack Compose',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                compose,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              const ComposeCards(),
                              const SizedBox(height: 40),
                              Text(
                                'XML Layouts',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                xml,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              const XmlCards(),
                              const SizedBox(height: 40),
                              Text(
                                'Desktop',
                                style: TextStyle(
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                'React',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                react,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              const ReactCards(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          MyBottomBar(),
        ],
      ),
    );
  }
}
