import 'package:flutter/material.dart';
import 'package:myportfolio/data/service_items_list.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/divider_title.dart';
import 'package:myportfolio/widgets/service_item_card.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  static final GlobalKey componentKey = GlobalKey();

  @override
  Key? get key => componentKey;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          key: GlobalKeys.servicesSectionKey,
          children: [
            DividerTitle(text: servicesTitle, styles: styles),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.12,
              ),
              child: styles.isMobile
                  ? _buildMobileLayout(context, styles)
                  : _buildDesktopLayout(context, styles),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, StyleParams styles) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildServiceItems(context, styles)],
    );
  }

  Widget _buildDesktopLayout(BuildContext context, StyleParams styles) {
    return _buildServiceItems(context, styles);
  }
}

Widget _buildServiceItems(BuildContext context, StyleParams styles) {
  if (styles.isMobile) {
    List<Widget> rows = [];
    for (int i = 0; i < serviceItemsList.length; i += 2) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ServiceItemCard(item: serviceItemsList[i], styles: styles),
            if (i + 1 < serviceItemsList.length)
              SizedBox(width: styles.spacing),
            if (i + 1 < serviceItemsList.length)
              ServiceItemCard(item: serviceItemsList[i + 1], styles: styles),
          ],
        ),
      );
      if (i + 2 < serviceItemsList.length) {
        rows.add(SizedBox(height: styles.runSpacing));
      }
    }
    return Column(children: rows);
  } else {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: styles.spacing,
      runSpacing: styles.runSpacing,
      children: [
        ...serviceItemsList
            .map((item) => ServiceItemCard(item: item, styles: styles)),
      ],
    );
  }
}
