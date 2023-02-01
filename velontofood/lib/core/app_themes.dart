import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velontofood/utils/app_color.dart';

const kVerticalSeparator = VerticalDivider();
const kDarkVerticalSeparator = VerticalDivider();
const kSeparator = Divider(height: 1, color: Colors.grey);
final kSeparatorLight = Divider(height: 1, color: Colors.grey.withOpacity(0.4));
const kWidgetBorder =
    Border.fromBorderSide(BorderSide(color: Color(0xFFBDBDBD), width: 1));
const kWidgetBorderLight =
    Border.fromBorderSide(BorderSide(color: Color(0xFFEEEEEE), width: 1));
const kWidgetBorderDark =
    Border.fromBorderSide(BorderSide(color: Color(0xFF616161), width: 1));
const kErrorColor = Color(0xFFD02737);
//RGB color
const kTextFieldFillColor = Color.fromRGBO(224, 231, 255, 0.2);

class AppThemes {
  /// LIGHT THEME
  static ThemeData get lightTheme {
    return ThemeData.light().copyWith(
        bottomNavigationBarTheme:
            ThemeData.light().bottomNavigationBarTheme.copyWith(
                  backgroundColor: Colors.white,
                  // selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,
                  selectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Cairo"),
                  unselectedLabelStyle: const TextStyle(fontFamily: "Cairo"),
                ),
        checkboxTheme: ThemeData.light().checkboxTheme.copyWith(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            side: BorderSide(width: 1.2, color: Colors.grey.shade700)),
        backgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
              textStyle: const TextStyle(color: secondaryColor)),
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F8FA),
        sliderTheme: ThemeData.light()
            .sliderTheme
            .copyWith(activeTrackColor: primaryMaterialColor),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                side:
                    BorderSide(width: 1, color: primaryMaterialColor.shade700),
                primary: primaryMaterialColor.shade700,
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Cairo"))),
        // switchTheme: ThemeData.light().switchTheme.copyWith(trackColor: MaterialStateProperty.all<Color>(Colors.red), overlayColor: MaterialStateProperty.all<Color>(Colors.black),),
        iconTheme: ThemeData.light().iconTheme.copyWith(
            color: ThemeData.light().textTheme.button!.color, size: 18),
        inputDecorationTheme: InputDecorationTheme(
          suffixStyle: const TextStyle(color: Colors.grey),
          fillColor: kTextFieldFillColor,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1, color: textFieldBorder)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  width: 1.5,
                  color: textFieldBorder)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1.5, color: kErrorColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1.5, color: kErrorColor)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1, color: textFieldBorder)),
        ),

        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(8),
        //     borderSide: BorderSide(
        //         color: Colors.black, style: BorderStyle.solid, width: 1))),
        primaryTextTheme: const TextTheme(
            headline6: TextStyle(color: Colors.black, fontFamily: "Cairo")),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  height: 1.5,
                  fontFamily: "Cairo"),
              caption: const TextStyle(
                  color: captionColor, fontFamily: "Cairo", fontSize: 12),
              subtitle1: ThemeData.light()
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 16, fontFamily: "Cairo"),
            ),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
              color: Colors.white,
              shadowColor: shadowColor,
              iconTheme: const IconThemeData(color: Colors.black),
              foregroundColor: Colors.black,
              centerTitle: true,
            ),
        cardTheme: ThemeData.light().cardTheme.copyWith(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              shadowColor: shadowColor,
              clipBehavior: Clip.hardEdge,
              elevation: 8,
            ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: primaryMaterialColor,
          onPrimary: Colors.white,
          textStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "Cairo"),
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        )),
        bottomSheetTheme: ThemeData.light().bottomSheetTheme.copyWith(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
            ),
        primaryColor: primaryMaterialColor,
        primaryColorLight: primaryMaterialColor.shade100,
        bottomAppBarColor: Colors.white,
        dividerColor: Colors.grey,
        floatingActionButtonTheme:
            ThemeData.dark().floatingActionButtonTheme.copyWith(
                  backgroundColor: primaryMaterialColor.shade500,
                  elevation: 8,
                  foregroundColor: Colors.white,
                ),
        colorScheme: ColorScheme.light(
            primary: primaryMaterialColor.shade500,
            secondary: primaryMaterialColor.shade400));
  }

  /// DARK THEME
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      bottomNavigationBarTheme:
          ThemeData.dark().bottomNavigationBarTheme.copyWith(
                // backgroundColor: Colors.white,
                selectedItemColor: primaryMaterialColor,
                unselectedItemColor: Colors.grey,
                selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: "Cairo"),
                unselectedLabelStyle: const TextStyle(fontFamily: "Cairo"),
              ),
      checkboxTheme: ThemeData.light().checkboxTheme.copyWith(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          side: BorderSide(width: 1.2, color: Colors.grey.shade300)),
      brightness: Brightness.dark,
      primaryColor: Colors.cyan,
      primaryColorLight: Colors.cyan.shade100,
      dividerColor: Colors.grey[200],
      backgroundColor: Colors.grey[800],
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0))),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: BorderSide(width: 1, color: Colors.cyan.shade700),
              primary: Colors.cyan.shade700,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontFamily: "Cairo"))),
      iconTheme: ThemeData.dark().iconTheme.copyWith(
          color: ThemeData.dark().textTheme.headline2!.color, size: 18),
      primaryTextTheme: const TextTheme(
          headline6: TextStyle(color: Colors.white, fontFamily: "Cairo")),
      textTheme: ThemeData.dark().textTheme.copyWith(
          bodyText1: TextStyle(
              color: Colors.white.withOpacity(0.60),
              height: 1.5,
              fontFamily: "Cairo"),
          subtitle1: ThemeData.dark()
              .textTheme
              .subtitle1!
              .copyWith(fontSize: 16, fontFamily: "Cairo")),
      tabBarTheme: ThemeData.dark().tabBarTheme.copyWith(),
      appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          color: ThemeData.dark().backgroundColor,
          centerTitle: true,
          foregroundColor: Colors.white,
          titleTextStyle: ThemeData.dark().textTheme.headline3,
          iconTheme: const IconThemeData(color: Colors.white)),
      cardTheme: ThemeData.dark().cardTheme.copyWith(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            clipBehavior: Clip.hardEdge,
            elevation: 2,
          ),
      floatingActionButtonTheme:
          ThemeData.dark().floatingActionButtonTheme.copyWith(
                backgroundColor: Colors.cyan.shade600,
                elevation: 8,
                foregroundColor: Colors.white,
              ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: Colors.cyan.shade600,
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Cairo"),
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      )),
      bottomSheetTheme: ThemeData.dark().bottomSheetTheme.copyWith(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
          ),
      inputDecorationTheme: InputDecorationTheme(
          suffixStyle: const TextStyle(color: Colors.grey, fontFamily: "Cairo"),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: 1,
                  color: Colors.grey.shade400)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1.5, color: Colors.cyan)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1.5, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  style: BorderStyle.solid, width: 1.5, color: Colors.red)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: 1,
                  color: Colors.grey.shade400))),
      // colorScheme: ColorScheme.light(primary:Colors.cyan, secondary: Colors.cyan.shade600)
    );
  }
}

// const primaryMaterialColor = MaterialColor(0xFF6096FD, {
//   50: Color(0xFFECF2FF),
//   100: Color(0xFFCFE0FE),
//   200: Color(0xFFB0CBFE),
//   300: Color(0xFF90B6FE),
//   400: Color(0xFF78A6FD),
//   500: Color(0xFF6096FD),
//   600: Color(0xFF588EFD),
//   700: Color(0xFF4E83FC),
//   800: Color(0xFF4479FC),
//   900: Color(0xFF3368FC)
// });

MaterialColor primaryMaterialColor = MaterialColor(0xFFB517FF, color);
const Color secondaryColor = Color(0xFF5774F2);

Map<int, Color> color = {
  50: const Color.fromRGBO(181, 23, 255, .1),
  100: const Color.fromRGBO(181, 23, 255, .2),
  200: const Color.fromRGBO(181, 23, 255, .3),
  300: const Color.fromRGBO(181, 23, 255, .4),
  400: const Color.fromRGBO(181, 23, 255, .5),
  500: const Color.fromRGBO(181, 23, 255, .6),
  600: const Color.fromRGBO(181, 23, 255, .7),
  700: const Color.fromRGBO(181, 23, 255, .8),
  800: const Color.fromRGBO(181, 23, 255, .9),
  900: const Color.fromRGBO(181, 23, 255, 1),
};

bool isLight(BuildContext context) =>
    Theme.of(context).brightness == Brightness.light;

final kArrowDownIcon = SvgPicture.asset('assets/icons/arrow_down.svg');
