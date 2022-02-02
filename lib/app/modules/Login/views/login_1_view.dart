import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/modules/Login/controllers/login_controller.dart';
import 'package:prod_family/app/modules/Login/views/login_view.dart';

class Login1View extends GetView {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'لديك حساب',
                    style: TextStyle(
                      fontSize: 21,
                      color: KColor_Text_Main_2,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 270,
                  child: Center(
                    child: Text(
                      'قم بتسجيل الدخول لتسهيل عملية الشراء وحفظ  جميع العمليات في حسابك',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                LoginForm(controller: controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
