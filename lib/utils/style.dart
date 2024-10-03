class StyleParams {
  final double megaSize;
  final double largeSize;
  final double mediumSize;
  final double smallSize;
  final double padding;
  final double iconSize;
  final double textFontSize;
  final double smallTextFontSize;
  final double contactSpacing;
  final double dividerIndent;
  final double imageSize;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonFontSize;
  final bool isMobile;
  final double progressBarWidth;
  final double spacing;
  final double runSpacing;

  StyleParams({
    required this.megaSize,
    required this.largeSize,
    required this.mediumSize,
    required this.smallSize,
    required this.padding,
    required this.iconSize,
    required this.textFontSize,
    required this.smallTextFontSize,
    required this.contactSpacing,
    required this.dividerIndent,
    required this.imageSize,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonFontSize,
    required this.isMobile,
    required this.progressBarWidth,
    required this.spacing,
    required this.runSpacing,
  });
}

class Style {
  static StyleParams getStyleParams(double screenWidth) {
    bool isMobile = screenWidth < 900;

    return StyleParams(
      megaSize: screenWidth > 800 ? 40 : 28,
      largeSize: screenWidth > 800 ? 32 : 20,
      mediumSize: screenWidth > 800 ? 24 : 18,
      smallSize: screenWidth > 800 ? 16 : 14,
      padding: screenWidth > 1200
          ? 260
          : screenWidth > 800
              ? 80
              : 20,
      iconSize: screenWidth > 800 ? 30 : 24,
      textFontSize: screenWidth > 800 ? 18 : 14,
      smallTextFontSize: screenWidth > 800 ? 16 : 12,
      contactSpacing: screenWidth > 800 ? 12 : 6,
      dividerIndent: screenWidth > 800 ? 240 : 80,
      imageSize: screenWidth > 1200
          ? 220
          : screenWidth > 800
              ? 180
              : 150,
      buttonWidth: screenWidth > 800 ? 160 : 80,
      buttonHeight: screenWidth > 800 ? 50 : 40,
      buttonFontSize: 12,
      isMobile: isMobile,
      progressBarWidth: screenWidth > 800 ? 200 : 120,
      spacing: screenWidth > 800 ? 20 : 10,
      runSpacing: screenWidth > 800 ? 30 : 15,
    );
  }
}
