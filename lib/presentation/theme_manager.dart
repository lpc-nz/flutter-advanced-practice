import 'package:advanced_flutter/presentation/color_manager.dart';
import 'package:advanced_flutter/presentation/font_manager.dart';
import 'package:advanced_flutter/presentation/styles_manager.dart';
import 'package:advanced_flutter/presentation/values_manager.dart';
import 'package:flutter/material.dart';

// Create function which will return Theme data
ThemeData getApplicationTheme() {
  return ThemeData(
    //colors of the App
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    //ripple color
    splashColor: ColorManager.primaryOpacity70,
    // //Will be use incase of disabled button
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey2),

    //Card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s16,
        )),
    //Button theme

    //Text theme

    //input decoration theme(text form field)
  );
}
