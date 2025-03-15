import 'package:flutter/material.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/card_item.dart';

class FlutterCards extends StatefulWidget {
  const FlutterCards({super.key});

  @override
  FlutterCardsState createState() => FlutterCardsState();
}

class FlutterCardsState extends State<FlutterCards> {
  final scrollController = ScrollController();

  Map<String, bool?> cardHoverMap = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: RawScrollbar(
        controller: scrollController,
        thumbVisibility: true,
        radius: const Radius.circular(50),
        thickness: 5,
        thumbColor: Theme.of(context).colorScheme.tertiary,
        trackVisibility: true,
        trackRadius: const Radius.circular(50),
        trackColor: Theme.of(context).colorScheme.secondary,
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  CardItem(
                    title: ftitNoteep,
                    imageUrl: 'assets/images/projects/flutter/logo_noteep.png',
                    description: fdesNoteep,
                    linkUrl: 'https://github.com/ndenicolais/Noteep',
                  ),
                  CardItem(
                    title: ftitQRation,
                    imageUrl: 'assets/images/projects/flutter/logo_qration.png',
                    description: fdesQRation,
                    linkUrl: 'https://github.com/ndenicolais/QRation',
                  ),
                  CardItem(
                    title: ftitCouplers,
                    imageUrl:
                        'assets/images/projects/flutter/logo_couplers.png',
                    description: fdesCouplers,
                    linkUrl: 'https://github.com/ndenicolais/Couplers',
                  ),
                  CardItem(
                    title: ftitShox,
                    imageUrl: 'assets/images/projects/flutter/logo_shox.png',
                    description: fdesShox,
                    linkUrl: 'https://github.com/ndenicolais/Shox',
                  ),
                  CardItem(
                    title: ftitPortfolio,
                    imageUrl: 'assets/images/logo.png',
                    description: fdesPortfolio,
                    linkUrl:
                        'https://github.com/ndenicolais/ndenicolais.github.io',
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
