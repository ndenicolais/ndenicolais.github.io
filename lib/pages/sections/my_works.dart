import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/utils/constants.dart';
import 'package:myportfolio/utils/globals.dart';
import 'package:myportfolio/utils/strings.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:myportfolio/widgets/work_container.dart';

class MyWorks extends StatelessWidget {
  const MyWorks({Key? key}) : super(key: key);

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
        child: Container(
          key: GlobalKeys.worksSectionKey,
          child: Column(
            children: [
              _buildHeader(context, styles),
              _buildDivider(context, styles),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildJobInfo(context, styles),
                    const SizedBox(height: 10),
                    _buildWorkContainers(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, StyleParams styles) {
    return Text(
      sWorks.toUpperCase(),
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.largeSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildDivider(BuildContext context, StyleParams styles) {
    return Divider(
      thickness: 1,
      indent: styles.dividerIndent,
      endIndent: styles.dividerIndent,
      color: Theme.of(context).colorScheme.secondary,
    );
  }

  Widget _buildJobInfo(BuildContext context, StyleParams styles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          wArethusaYear,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: styles.smallSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        _buildBoldText(context, styles, wArethusaJob),
        _buildBoldText(context, styles, wArethusaMap),
        const SizedBox(height: 10),
        Text(
          dArethusa,
          style: GoogleFonts.montserrat(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: styles.smallSize,
          ),
        ),
      ],
    );
  }

  Widget _buildBoldText(BuildContext context, StyleParams styles, String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: styles.smallSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildWorkContainers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: WorkContainer(
            title: tDiggerly,
            description: dDiggerly,
            url: AppConstants.uriDiggerly,
          ),
        ),
        Expanded(
          child: WorkContainer(
            title: tReasset,
            description: dReasset,
            url: AppConstants.uriReasset,
          ),
        ),
        Expanded(
          child: WorkContainer(
            title: tCADS,
            description: dCADS,
            url: AppConstants.uriCads,
          ),
        ),
      ],
    );
  }
}
