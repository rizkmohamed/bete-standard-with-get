import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/modules/Register/controllers/register_controller.dart';
import 'package:prod_family/app/modules/Register/views/Form.dart';

class Register1View extends GetView {
  final controller = Get.put(RegisterController());
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
                    'ليس لديك حساب',
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
                      'قم بتسجيل حساب جديد لتسهيل عملية الشراء وحفظ  جميع العمليات في حسابك',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                RegisterForm(controller: controller)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
