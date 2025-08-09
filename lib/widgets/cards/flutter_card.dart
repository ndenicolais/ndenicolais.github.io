import 'package:flutter/material.dart';
import 'package:myportfolio/data/projects_list.dart';
import 'package:myportfolio/widgets/project_item_card.dart';

class FlutterCards extends StatelessWidget {
  const FlutterCards({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return SizedBox(
      height: 280,
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
                children: projects
                    .map((p) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ProjectItemCard(project: p),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
