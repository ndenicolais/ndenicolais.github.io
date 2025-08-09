class StyleParams {
  final bool isMobile;

  // Container
  final double containerMicro;
  final double containerSmall;
  final double containerMedium;
  final double containerLarge;
  final double containerMega;

  // Font
  final double fontMicro;
  final double fontSmall;
  final double fontMedium;
  final double fontLarge;
  final double fontMega;

  // Icon
  final double iconMicro;
  final double iconSmall;
  final double iconMedium;
  final double iconLarge;
  final double iconMega;

  // Image
  final double imageMicro;
  final double imageSmall;
  final double imageMedium;
  final double imageLarge;
  final double imageMega;

  // Divider
  final double dividerLarge;
  final double dividerSmall;
  final double dividerMedium;

  // Other
  final double padding;
  final double contactSpacing;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonFontSize;
  final double progressBarWidth;
  final double spacing;
  final double runSpacing;

  StyleParams({
    required this.isMobile,
    required this.containerMicro,
    required this.containerSmall,
    required this.containerMedium,
    required this.containerLarge,
    required this.containerMega,
    required this.fontMicro,
    required this.fontSmall,
    required this.fontMedium,
    required this.fontLarge,
    required this.fontMega,
    required this.imageMicro,
    required this.imageSmall,
    required this.imageMedium,
    required this.imageLarge,
    required this.imageMega,
    required this.iconMicro,
    required this.iconSmall,
    required this.iconMedium,
    required this.iconLarge,
    required this.iconMega,
    required this.dividerLarge,
    required this.dividerSmall,
    required this.dividerMedium,
    required this.padding,
    required this.contactSpacing,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonFontSize,
    required this.progressBarWidth,
    required this.spacing,
    required this.runSpacing,
  });
}

class Style {
  static StyleParams getStyleParams(double screenWidth) {
    bool isMobile = screenWidth < 900;
    double containerMicro = 100;
    double containerSmall = 140;
    double containerMedium = 240;
    double containerLarge = 280;
    double containerMega = 460;
    double fontMicro = 12;
    double fontSmall = 14;
    double fontMedium = 16;
    double fontLarge = 20;
    double fontMega = 24;
    double iconMicro = 16;
    double iconSmall = 24;
    double iconMedium = 36;
    double iconLarge = 56;
    double iconMega = 72;
    double imageMicro = 120;
    double imageSmall = 160;
    double imageMedium = 220;
    double imageLarge = 380;
    double imageMega = 420;
    double dividerSmall = 100;
    double dividerMedium = 220;
    double dividerLarge = 200;

    return StyleParams(
      isMobile: isMobile,
      containerMicro: containerMicro,
      containerSmall: containerSmall,
      containerMedium: containerMedium,
      containerLarge: containerLarge,
      containerMega: containerMega,
      fontMicro: fontMicro,
      fontSmall: fontSmall,
      fontMedium: fontMedium,
      fontLarge: fontLarge,
      fontMega: fontMega,
      iconMicro: iconMicro,
      iconSmall: iconSmall,
      iconMedium: iconMedium,
      iconLarge: iconLarge,
      iconMega: iconMega,
      imageMicro: imageMicro,
      imageSmall: imageSmall,
      imageMedium: imageMedium,
      imageLarge: imageLarge,
      imageMega: imageMega,
      dividerSmall: dividerSmall,
      dividerMedium: dividerMedium,
      dividerLarge: dividerLarge,
      padding: screenWidth > 1200
          ? 260
          : screenWidth > 800
              ? 80
              : 20,
      contactSpacing: screenWidth > 800 ? 12 : 6,
      buttonWidth: screenWidth > 800 ? 160 : 80,
      buttonHeight: screenWidth > 800 ? 50 : 40,
      buttonFontSize: 12,
      progressBarWidth: screenWidth > 800 ? 200 : 120,
      spacing: screenWidth > 800 ? 20 : 2,
      runSpacing: screenWidth > 800 ? 30 : 6,
    );
  }
}
