import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: image,
          width: 140,
          height: 40,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 140,
          child: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 20,
              fontFamily: 'CustomFont',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
