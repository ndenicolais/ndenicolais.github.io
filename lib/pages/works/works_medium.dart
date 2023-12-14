import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ndenicolais/utils/strings.dart';
import 'package:ndenicolais/widgets/bottom_bar.dart';
import 'package:ndenicolais/widgets/top_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksPageMedium extends StatelessWidget {
  const WorksPageMedium({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri uriDiggerly = Uri.parse('https://rsi-na.it/diggerly/');
    final Uri uriReasset =
        Uri.parse('https://rsi-na.it/progetto-di-ricerca-reasset/');
    final Uri uriCads = Uri.parse('https://rsi-na.it/progetto-cads/');

    return Material(
      child: ListView(
        children: [
          const MyTopBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
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
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CustomFont',
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'WORKS',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 100,
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
                  indent: 180,
                  endIndent: 180,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(height: 30),
                Text(
                  'My works experience',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 24,
                    fontFamily: 'CustomFont',
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 180),
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
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Text(
                                'Software Developer',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Container(
                                height: 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  '2022-Present',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont',
                                  ),
                                ),
                              ),
                              Text(
                                arethusa,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              Text(
                                'DIGGERly',
                                style: TextStyle(
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                diggerly,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 40,
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
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
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
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                reasset,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 40,
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
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
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
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                cads,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontFamily: 'CustomFont',
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 40,
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
                                    backgroundColor:
                                        Theme.of(context).colorScheme.secondary,
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                'Assitente fotografo',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  '2015',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                rosati,
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Okaidi',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                'Addetto inventario',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  '2010',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                okaidi,
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Benevento Città Spettacolo',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              Text(
                                'Steward eventi',
                                style: TextStyle(
                                    fontSize: 24,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'CustomFont'),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                height: 40,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  '2009, 2010, 2011',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'CustomFont'),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                spettacolo,
                                style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
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
          MyBottomBar(),
        ],
      ),
    );
  }
}
