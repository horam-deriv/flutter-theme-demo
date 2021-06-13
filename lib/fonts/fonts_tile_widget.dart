import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/avatar_chip_widget.dart';
import 'package:flutter_theme_demo/color/widget/color_code_widget.dart';
import 'package:flutter_theme_demo/fonts/fonts_helper.dart';

part 'fonts_details_widget.dart';

class FontsTileWidget extends StatelessWidget {
  const FontsTileWidget({required this.styleType});

  final FontType styleType;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _setStyleName(styleType),
            style: _setStyle(context, styleType),
          ),
          _FontsDetailsWidget(textStyle: _setStyle(context, styleType))
        ],
      );

  String _setStyleName(FontType type) {
    switch (type) {
      case FontType.headline1:
        return 'headline1';
      case FontType.headline2:
        return 'headline2';
      case FontType.headline3:
        return 'headline3';
      case FontType.headline4:
        return 'headline4';
      case FontType.headline5:
        return 'headline5';
      case FontType.headline6:
        return 'headline6';
      case FontType.subtitle1:
        return 'subtitle1';
      case FontType.subtitle2:
        return 'subtitle2';
      case FontType.bodyText1:
        return 'bodyText1';
      case FontType.bodyText2:
        return 'bodyText2';
      case FontType.caption:
        return 'caption';
      case FontType.button:
        return 'button';
      case FontType.overline:
        return 'overline';
      default:
        return 'bodyText1';
    }
  }

  TextStyle _setStyle(BuildContext context, FontType type) {
    switch (type) {
      case FontType.headline1:
        return Theme.of(context).textTheme.headline1!;
      case FontType.headline2:
        return Theme.of(context).textTheme.headline2!;
      case FontType.headline3:
        return Theme.of(context).textTheme.headline3!;
      case FontType.headline4:
        return Theme.of(context).textTheme.headline4!;
      case FontType.headline5:
        return Theme.of(context).textTheme.headline5!;
      case FontType.headline6:
        return Theme.of(context).textTheme.headline6!;
      case FontType.subtitle1:
        return Theme.of(context).textTheme.subtitle1!;
      case FontType.subtitle2:
        return Theme.of(context).textTheme.subtitle2!;
      case FontType.bodyText1:
        return Theme.of(context).textTheme.bodyText1!;
      case FontType.bodyText2:
        return Theme.of(context).textTheme.bodyText2!;
      case FontType.caption:
        return Theme.of(context).textTheme.caption!;
      case FontType.button:
        return Theme.of(context).textTheme.button!;
      case FontType.overline:
        return Theme.of(context).textTheme.overline!;
      default:
        return Theme.of(context).textTheme.bodyText1!;
    }
  }
}
