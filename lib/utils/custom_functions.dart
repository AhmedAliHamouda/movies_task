import 'package:flutter/material.dart';
import 'package:movies_task/utils/constants.dart';

class CustomFunctions {
  static void showCustomSnackBar({
    required String? text,
    bool? hasIcon=false,
    IconData? iconType,
    required BuildContext context,
    Color? iconColor,
    Color? backgroundColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: backgroundColor,
      content: Row(
        children: [
          hasIcon!
              ? Icon(
            iconType,
            color: iconColor,
          )
              : Container(
            height: 22.0,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text!,
              style: const TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    ));
  }

  static void showCustomSnackBarWithoutContext({
    required String text,
    bool? hasIcon = false,
    IconData? iconType,
    Color? iconColor,
    int durationBySeconds = 3,
    Color? backgroundColor,
  }) {
    Constants.messengerKey.currentState!.showSnackBar(SnackBar(
      backgroundColor: backgroundColor,
      content: Row(
        children: [
          hasIcon!
              ? Icon(
            iconType,
            color: iconColor,
          )
              : Container(
            height: 22.0,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
      duration: Duration(seconds: durationBySeconds),
    ));
  }
}
