enum FontType {
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  caption,
  button,
  overline,
}

class FontsHelper {
  FontsHelper() {
    _setFonts();
  }

  final List<FontType> _fonts = <FontType>[];

  List<FontType> get themeFonts => _fonts;

  List<FontType>? _setFonts() {
    _fonts
      // headline1
      ..add(FontType.headline1)
      // headline2
      ..add(FontType.headline2)
      // headline3
      ..add(FontType.headline3)
      // headline4
      ..add(FontType.headline4)
      // headline5
      ..add(FontType.headline5)
      // headline6
      ..add(FontType.headline6)
      // subtitle1
      ..add(FontType.subtitle1)
      // subtitle2
      ..add(FontType.subtitle2)
      // bodyText1
      ..add(FontType.bodyText1)
      // bodyText2
      ..add(FontType.bodyText2)
      // caption
      ..add(FontType.caption)
      // button
      ..add(FontType.button)
      // overline
      ..add(FontType.overline);
  }
}
