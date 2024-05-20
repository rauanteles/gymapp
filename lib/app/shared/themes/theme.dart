import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff00696f),
      surfaceTint: Color(0xff00696f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9cf0f7),
      onPrimaryContainer: Color(0xff002022),
      secondary: Color(0xff4a6365),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcce8ea),
      onSecondaryContainer: Color(0xff051f21),
      tertiary: Color(0xff4f5f7d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd6e3ff),
      onTertiaryContainer: Color(0xff091b36),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff4fafb),
      onBackground: Color(0xff161d1d),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff161d1d),
      surfaceVariant: Color(0xffdae4e5),
      onSurfaceVariant: Color(0xff3f4849),
      outline: Color(0xff6f797a),
      outlineVariant: Color(0xffbec8c9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inverseOnSurface: Color(0xffecf2f2),
      inversePrimary: Color(0xff80d4da),
      primaryFixed: Color(0xff9cf0f7),
      onPrimaryFixed: Color(0xff002022),
      primaryFixedDim: Color(0xff80d4da),
      onPrimaryFixedVariant: Color(0xff004f54),
      secondaryFixed: Color(0xffcce8ea),
      onSecondaryFixed: Color(0xff051f21),
      secondaryFixedDim: Color(0xffb1cbce),
      onSecondaryFixedVariant: Color(0xff324b4d),
      tertiaryFixed: Color(0xffd6e3ff),
      onTertiaryFixed: Color(0xff091b36),
      tertiaryFixedDim: Color(0xffb6c7ea),
      onTertiaryFixedVariant: Color(0xff374764),
      surfaceDim: Color(0xffd5dbdb),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f5),
      surfaceContainer: Color(0xffe9efef),
      surfaceContainerHigh: Color(0xffe3e9e9),
      surfaceContainerHighest: Color(0xffdde4e4),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004b4f),
      surfaceTint: Color(0xff00696f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff238086),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2e4749),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60797b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff334360),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff657594),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fafb),
      onBackground: Color(0xff161d1d),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff161d1d),
      surfaceVariant: Color(0xffdae4e5),
      onSurfaceVariant: Color(0xff3b4545),
      outline: Color(0xff576162),
      outlineVariant: Color(0xff737d7d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inverseOnSurface: Color(0xffecf2f2),
      inversePrimary: Color(0xff80d4da),
      primaryFixed: Color(0xff238086),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00666c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60797b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff476062),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff657594),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4c5c7a),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdb),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f5),
      surfaceContainer: Color(0xffe9efef),
      surfaceContainerHigh: Color(0xffe3e9e9),
      surfaceContainerHighest: Color(0xffdde4e4),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002729),
      surfaceTint: Color(0xff00696f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004b4f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0c2628),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2e4749),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff11223d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff334360),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fafb),
      onBackground: Color(0xff161d1d),
      surface: Color(0xfff4fafb),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae4e5),
      onSurfaceVariant: Color(0xff1c2626),
      outline: Color(0xff3b4545),
      outlineVariant: Color(0xff3b4545),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3232),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffadf9ff),
      primaryFixed: Color(0xff004b4f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003236),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2e4749),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff183132),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff334360),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff1c2d48),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbdb),
      surfaceBright: Color(0xfff4fafb),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f5),
      surfaceContainer: Color(0xffe9efef),
      surfaceContainerHigh: Color(0xffe3e9e9),
      surfaceContainerHighest: Color(0xffdde4e4),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff80d4da),
      surfaceTint: Color(0xff80d4da),
      onPrimary: Color(0xff00373a),
      primaryContainer: Color(0xff004f54),
      onPrimaryContainer: Color(0xff9cf0f7),
      secondary: Color(0xffb1cbce),
      onSecondary: Color(0xff1b3436),
      secondaryContainer: Color(0xff324b4d),
      onSecondaryContainer: Color(0xffcce8ea),
      tertiary: Color(0xffb6c7ea),
      onTertiary: Color(0xff20314c),
      tertiaryContainer: Color(0xff374764),
      onTertiaryContainer: Color(0xffd6e3ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0e1415),
      onBackground: Color(0xffdde4e4),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffdde4e4),
      surfaceVariant: Color(0xff3f4849),
      onSurfaceVariant: Color(0xffbec8c9),
      outline: Color(0xff899393),
      outlineVariant: Color(0xff3f4849),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inverseOnSurface: Color(0xff2b3232),
      inversePrimary: Color(0xff00696f),
      primaryFixed: Color(0xff9cf0f7),
      onPrimaryFixed: Color(0xff002022),
      primaryFixedDim: Color(0xff80d4da),
      onPrimaryFixedVariant: Color(0xff004f54),
      secondaryFixed: Color(0xffcce8ea),
      onSecondaryFixed: Color(0xff051f21),
      secondaryFixedDim: Color(0xffb1cbce),
      onSecondaryFixedVariant: Color(0xff324b4d),
      tertiaryFixed: Color(0xffd6e3ff),
      onTertiaryFixed: Color(0xff091b36),
      tertiaryFixedDim: Color(0xffb6c7ea),
      onTertiaryFixedVariant: Color(0xff374764),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff161d1d),
      surfaceContainer: Color(0xff1a2121),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303636),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff85d8df),
      surfaceTint: Color(0xff80d4da),
      onPrimary: Color(0xff001a1c),
      primaryContainer: Color(0xff479da3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb5d0d2),
      onSecondary: Color(0xff001a1c),
      secondaryContainer: Color(0xff7b9597),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffbbcbee),
      onTertiary: Color(0xff041631),
      tertiaryContainer: Color(0xff8191b2),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e1415),
      onBackground: Color(0xffdde4e4),
      surface: Color(0xff0e1415),
      onSurface: Color(0xfff6fcfc),
      surfaceVariant: Color(0xff3f4849),
      onSurfaceVariant: Color(0xffc3cdcd),
      outline: Color(0xff9ba5a5),
      outlineVariant: Color(0xff7b8586),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inverseOnSurface: Color(0xff252b2c),
      inversePrimary: Color(0xff005055),
      primaryFixed: Color(0xff9cf0f7),
      onPrimaryFixed: Color(0xff001416),
      primaryFixedDim: Color(0xff80d4da),
      onPrimaryFixedVariant: Color(0xff003d40),
      secondaryFixed: Color(0xffcce8ea),
      onSecondaryFixed: Color(0xff001416),
      secondaryFixedDim: Color(0xffb1cbce),
      onSecondaryFixedVariant: Color(0xff213a3c),
      tertiaryFixed: Color(0xffd6e3ff),
      onTertiaryFixed: Color(0xff00112b),
      tertiaryFixedDim: Color(0xffb6c7ea),
      onTertiaryFixedVariant: Color(0xff263652),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff161d1d),
      surfaceContainer: Color(0xff1a2121),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303636),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffedfeff),
      surfaceTint: Color(0xff80d4da),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff85d8df),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffedfeff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb5d0d2),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffbfaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffbbcbee),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e1415),
      onBackground: Color(0xffdde4e4),
      surface: Color(0xff0e1415),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f4849),
      onSurfaceVariant: Color(0xfff3fdfd),
      outline: Color(0xffc3cdcd),
      outlineVariant: Color(0xffc3cdcd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e4),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002f32),
      primaryFixed: Color(0xffa1f5fb),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff85d8df),
      onPrimaryFixedVariant: Color(0xff001a1c),
      secondaryFixed: Color(0xffd1ecee),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb5d0d2),
      onSecondaryFixedVariant: Color(0xff001a1c),
      tertiaryFixed: Color(0xffdde7ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbbcbee),
      onTertiaryFixedVariant: Color(0xff041631),
      surfaceDim: Color(0xff0e1415),
      surfaceBright: Color(0xff343a3b),
      surfaceContainerLowest: Color(0xff090f10),
      surfaceContainerLow: Color(0xff161d1d),
      surfaceContainer: Color(0xff1a2121),
      surfaceContainerHigh: Color(0xff252b2c),
      surfaceContainerHighest: Color(0xff303636),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
