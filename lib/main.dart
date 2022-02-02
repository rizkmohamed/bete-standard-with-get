import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/Shared/Dismiss_Keyboard.dart';
import 'app/Shared/Theme.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    DismissKeyboard(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        theme: CustomTheme.lightTheme,
        locale: Locale('ar'),
        fallbackLocale: Locale('ar'),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
