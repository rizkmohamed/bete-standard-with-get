import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
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
                          Text('تسجيل الدخول'),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        'أهلا بك في محلات ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: KColor_Text_Main_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    LoginForm(controller: controller),
                  ],
                ),
                Positioned.fill(
                  bottom: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: Text(
                        'ليس لديك حساب؟ انشاء حساب',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: KColor_Text_Main_2,
                          fontSize: 12,
                        ),
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

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.loginFormKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أدخل رقم الهاتف',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: KColor_Text_Main_2,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "رقم الهاتف",
              ),
              keyboardType: TextInputType.phone,
              controller: controller.phoneController,
              onSaved: (value) {
                controller.phone = value!;
              },
              validator: (value) {
                return controller.validatePhone(value!);
              },
            ),
            SizedBox(height: 20),
            Text(
              'كلمة المرور',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: KColor_Text_Main_2,
              ),
            ),
            Obx(() {
              if (controller.obscureText.value == true)
                return TextFormField(
                  decoration: InputDecoration(
                      hintText: '•••••••••',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_off_outlined),
                        onPressed: () {
                          controller.changPassVisiblit();
                        },
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.obscureText.value,
                  controller: controller.passwordController,
                  onSaved: (value) {
                    controller.password = value!;
                  },
                  validator: (value) {
                    return controller.validatePassword(value!);
                  },
                );
              else
                return TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: '•••••••••',
                      hintStyle: TextStyle(
                        color: KColor_Text_Sec_1,
                        fontSize: 12,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_outlined),
                        onPressed: () {
                          controller.changPassVisiblit();
                        },
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.obscureText.value,
                  controller: controller.passwordController,
                  onSaved: (value) {
                    controller.password = value!;
                  },
                  validator: (value) {
                    return controller.validatePassword(value!);
                  },
                );
            }),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'هل نسيت كلمة المرور ؟',
                    style: TextStyle(
                      color: KColor_Text_Sec_2,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () {
                  controller.checkLogin();
                },
                child: CustomButton_1(
                  lable: 'تسجيل الدخول',
                ),
              ),
            ),
          ],
        ));
  }
}
