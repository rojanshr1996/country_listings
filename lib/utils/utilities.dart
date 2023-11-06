import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

class Utilities {
  Utilities._();

  static doubleBack(BuildContext context) {
    Utilities.closeActivity(context);
    Utilities.closeActivity(context);
  }

  static double screenWidth(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth;
  }

  static double screenHeight(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight;
  }

  static Future<dynamic> openActivity(context, object,
      {bool fullscreenDialog = false,
      int transitionDuration = 50,
      Widget Function(
              BuildContext, Animation<double>, Animation<double>, Widget)?
          transitionBuilder}) async {
    return await Navigator.of(context).push(
      PageRouteBuilder(
          fullscreenDialog: fullscreenDialog,
          transitionDuration: Duration(milliseconds: transitionDuration),
          reverseTransitionDuration: Duration(milliseconds: transitionDuration),
          pageBuilder: (BuildContext context, _, __) {
            return object;
          },
          transitionsBuilder: transitionBuilder ??
              (_, Animation<double> animation, __, Widget child) {
                return child;
              }),
    );
  }

  static Future<dynamic> fadeOpenActivity(context, object) async {
    return await Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 50),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        pageBuilder: (BuildContext context, _, __) {
          return object;
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  static Future<dynamic> fadeReplaceActivity(context, object) async {
    return await Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 50),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        pageBuilder: (BuildContext context, _, __) {
          return object;
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  static Future<dynamic> replaceActivity(context, object) async {
    return await Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 50),
        reverseTransitionDuration: const Duration(milliseconds: 50),
        pageBuilder: (BuildContext context, _, __) {
          return object;
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  static void unfocus(context) {
    return FocusScope.of(context).unfocus();
  }

  static Future<dynamic> replaceNamedActivity(context, routeName,
      {Object? arguments}) async {
    return await Navigator.pushReplacementNamed(context, routeName,
        arguments: arguments);
  }

  static Future<dynamic> openNamedActivity(context, routeName,
      {Object? arguments}) async {
    return await Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void removeStackActivity(context, object) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => object), (r) => false);
  }

  static void removeNamedStackActivity(context, routeName,
      {Object? arguments}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  static void closeActivity(context) {
    Navigator.pop(context);
  }

  static void returnDataCloseActivity(context, object) {
    Navigator.pop(context, object);
  }

  static String encodeJson(dynamic jsonData) {
    return json.encode(jsonData);
  }

  static dynamic decodeJson(String jsonString) {
    return json.decode(jsonString);
  }

  static bool isIOS() {
    return Platform.isIOS;
  }
}
