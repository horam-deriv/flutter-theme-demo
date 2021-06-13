import 'package:flutter/material.dart';

import 'color/model/presentation_color.dart';

class ColorHelper {
  ColorHelper(this._context) {
    _setColors();
  }
  final BuildContext _context;
  final List<PresentationColor> _colors = <PresentationColor>[];
  final List<PresentationColor> _schemeColors = <PresentationColor>[];

  List<PresentationColor> get themeColors => _colors;

  List<PresentationColor> get schemeColors => _schemeColors;

  List<PresentationColor>? _setColors() {
    _schemeColors // PrimaryColor
      ..add(PresentationColor(
        name: 'PrimaryColor',
        color: Theme.of(_context).colorScheme.primary,
      ))
      // PrimaryColorVariant
      ..add(PresentationColor(
        name: 'PrimaryColorVariant',
        color: Theme.of(_context).colorScheme.primaryVariant,
      ))
      // onPrimaryColor
      ..add(PresentationColor(
        name: 'onPrimary',
        color: Theme.of(_context).colorScheme.onPrimary,
      ))
      // Secondary
      ..add(PresentationColor(
        name: 'Secondary',
        color: Theme.of(_context).colorScheme.secondary,
      ))
      // SecondaryVariant
      ..add(PresentationColor(
        name: 'SecondaryVariant',
        color: Theme.of(_context).colorScheme.secondaryVariant,
      ))
      // onSecondaryColor
      ..add(PresentationColor(
        name: 'onSecondary',
        color: Theme.of(_context).colorScheme.onSecondary,
      ))
      // surface
      ..add(PresentationColor(
        name: 'surface',
        color: Theme.of(_context).colorScheme.surface,
      ))
      // onSurface
      ..add(PresentationColor(
        name: 'onSurface',
        color: Theme.of(_context).colorScheme.onSurface,
      ))
      // background
      ..add(PresentationColor(
        name: 'background',
        color: Theme.of(_context).colorScheme.background,
      ))
      // onBackground
      ..add(PresentationColor(
        name: 'onBackground',
        color: Theme.of(_context).colorScheme.onBackground,
      ))
      // error
      ..add(PresentationColor(
        name: 'error',
        color: Theme.of(_context).colorScheme.error,
      ))
      // onError
      ..add(PresentationColor(
        name: 'onError',
        color: Theme.of(_context).colorScheme.onError,
      ));

    _colors
      // primaryColor
      ..add(PresentationColor(
        name: 'primaryColor',
        color: Theme.of(_context).primaryColor,
      ))
      // primaryColorDark
      ..add(PresentationColor(
        name: 'primaryColorDark',
        color: Theme.of(_context).primaryColorDark,
      ))
      // primaryColorLight
      ..add(PresentationColor(
        name: 'primaryColorLight',
        color: Theme.of(_context).primaryColorLight,
      ))
      // accentColor
      ..add(PresentationColor(
        name: 'accentColor',
        color: Theme.of(_context).accentColor,
      ))
      // backgroundColor
      ..add(PresentationColor(
        name: 'backgroundColor',
        color: Theme.of(_context).backgroundColor,
      ))
      // bottomAppBarColor
      ..add(PresentationColor(
        name: 'bottomAppBarColor',
        color: Theme.of(_context).bottomAppBarColor,
      ))
      // buttonColor
      ..add(PresentationColor(
        name: 'buttonColor',
        color: Theme.of(_context).buttonColor,
      ))
      // canvasColor
      ..add(PresentationColor(
        name: 'canvasColor',
        color: Theme.of(_context).canvasColor,
      ))
      // cardColor
      ..add(PresentationColor(
        name: 'cardColor',
        color: Theme.of(_context).cardColor,
      ))
      // dialogBackgroundColor
      ..add(PresentationColor(
        name: 'dialogBackgroundColor',
        color: Theme.of(_context).dialogBackgroundColor,
      ))
      // disabledColor
      ..add(PresentationColor(
        name: 'disabledColor',
        color: Theme.of(_context).disabledColor,
      ))
      // dividerColor
      ..add(PresentationColor(
        name: 'dividerColor',
        color: Theme.of(_context).dividerColor,
      ))
      // errorColor
      ..add(PresentationColor(
        name: 'errorColor',
        color: Theme.of(_context).errorColor,
      ))
      // focusColor
      ..add(PresentationColor(
        name: 'focusColor',
        color: Theme.of(_context).focusColor,
      ))
      // highlightColor
      ..add(PresentationColor(
        name: 'highlightColor',
        color: Theme.of(_context).highlightColor,
      ))
      // hintColor
      ..add(PresentationColor(
        name: 'hintColor',
        color: Theme.of(_context).hintColor,
      ))
      // indicatorColor
      ..add(PresentationColor(
        name: 'indicatorColor',
        color: Theme.of(_context).indicatorColor,
      ))
      // shadowColor
      ..add(PresentationColor(
        name: 'shadowColor',
        color: Theme.of(_context).shadowColor,
      ))
      // splashColor
      ..add(PresentationColor(
        name: 'splashColor',
        color: Theme.of(_context).splashColor,
      ))
      // toggleableActiveColor
      ..add(PresentationColor(
        name: 'toggleableActiveColor',
        color: Theme.of(_context).toggleableActiveColor,
      ))
      // unselectedWidgetColor
      ..add(PresentationColor(
        name: 'unselectedWidgetColor',
        color: Theme.of(_context).unselectedWidgetColor,
      ))
      // textSelectionColor
      ..add(PresentationColor(
        name: 'textSelectionColor',
        color: Theme.of(_context).textSelectionTheme.selectionColor,
      ))
      // textSelectionHandleColor
      ..add(PresentationColor(
        name: 'textSelectionHandleColor',
        color: Theme.of(_context).textSelectionTheme.selectionHandleColor,
      ))
      // cursorColor
      ..add(PresentationColor(
        name: 'cursorColor',
        color: Theme.of(_context).textSelectionTheme.cursorColor,
      ));
  }
}
