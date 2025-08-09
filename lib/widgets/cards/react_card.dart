import 'package:flutter/material.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/widgets/card_item.dart';

class ReactCards extends StatefulWidget {
  const ReactCards({super.key});

  @override
  ReactCardsState createState() => ReactCardsState();
}

class ReactCardsState extends State<ReactCards> {
  final scrollController = ScrollController();

  Map<String, bool?> cardHoverMap = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
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
              const SizedBox(height: 10),
              Row(
                children: [
                  CardItem(
                    title: reactTitPWA,
                    imageUrl: 'assets/images/projects/react/react_pwa.png',
                    description: reactDesPWA,
                    linkUrl: 'https://github.com/ndenicolais/pwa-app',
                  ),
                  CardItem(
                    title: reactTitQR,
                    imageUrl: 'assets/images/projects/react/react_qr.png',
                    description: reactDesQR,
                    linkUrl: 'https://github.com/ndenicolais/qr-code-generator',
                  ),
                  CardItem(
                    title: reactTitPassword,
                    imageUrl: 'assets/images/projects/react/react_password.png',
                    description: reactDesPassword,
                    linkUrl:
                        'https://github.com/ndenicolais/react-password-generator',
                  ),
                  CardItem(
                    title: reactTitClock,
                    imageUrl: 'assets/images/projects/react/react_clock.png',
                    description: reactDesClock,
                    linkUrl:
                        'https://github.com/ndenicolais/react-digital-clock',
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
