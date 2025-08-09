import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/models/project_model.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectItemCard extends StatefulWidget {
  final ProjectCardModel project;

  const ProjectItemCard({super.key, required this.project});

  @override
  State<ProjectItemCard> createState() => _ProjectItemCardState();
}

class _ProjectItemCardState extends State<ProjectItemCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _launchUrl() {
    launchUrlString(widget.project.linkUrl);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final styles = Style.getStyleParams(screenWidth);

    return MouseRegion(
      onEnter: (_) {
        _controller.forward();
      },
      onExit: (_) {
        _controller.reverse();
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _launchUrl,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            final angle = _animation.value * 3.1416;
            final isFront = _animation.value < 0.5;

            return Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(angle),
              alignment: Alignment.center,
              child: isFront
                  ? _buildFrontSide(context)
                  : Transform(
                      transform: Matrix4.identity()..rotateY(3.1416),
                      alignment: Alignment.center,
                      child: _buildBackSide(context, styles)),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontSide(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        widget.project.previewUrl,
        fit: BoxFit.cover,
        width: 340,
        height: 220,
      ),
    );
  }

  Widget _buildBackSide(BuildContext context, StyleParams styles) {
    return Container(
      width: 340,
      height: 220,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Theme.of(context).colorScheme.tertiary,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.project.logoUrl,
            width: 48,
            height: 48,
          ),
          const SizedBox(height: 5),
          Text(
            widget.project.title,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.onTertiary,
              fontSize: styles.isMobile ? styles.fontMicro : styles.fontSmall,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            widget.project.description,
            style: GoogleFonts.montserrat(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: styles.isMobile ? styles.fontMicro : styles.fontSmall,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
