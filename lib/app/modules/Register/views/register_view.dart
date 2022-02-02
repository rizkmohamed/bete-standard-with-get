import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/modules/Register/views/Form.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.all(15),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back_ios),
                          ),
                          Text(' انشاء حساب جديد'),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        'أهلا بك في للأسر المنتجة ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: KColor_Text_Main_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    RegisterForm(controller: controller)
                  ],
                ),
                Positioned.fill(
                  bottom: 70,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      ' لديك حساب؟  سجل الدخول',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: KColor_Text_Main_2,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
