import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showErrorSnackBar(String e) {
  Get.rawSnackbar(
    duration: Duration(seconds: 2),
    snackStyle: SnackStyle.FLOATING,
    backgroundColor: Colors.red,
    borderRadius: 50,
    messageText: Text(
      e,
      textAlign: TextAlign.center,
      maxLines: 30,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeInOut,
    barBlur: 20,
    snackPosition: SnackPosition.TOP,
    margin: EdgeInsets.all(20),
  );
}

void showSuccessSnackBar(String body) {
  Get.rawSnackbar(
    duration: Duration(seconds: 2),
    snackStyle: SnackStyle.FLOATING,
    backgroundColor: Colors.green,
    snackPosition: SnackPosition.TOP,
    borderRadius: 50,
    messageText: Text(
      body,
      textAlign: TextAlign.center,
      maxLines: 30,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeInOut,
    barBlur: 20,
    margin: EdgeInsets.all(20),
  );
}

extension ExtendedDouble on double {
  Widget get sizedHeight => SizedBox(
        height: this,
      );
  Widget get sizedWidget => SizedBox(
        width: this,
      );
}
