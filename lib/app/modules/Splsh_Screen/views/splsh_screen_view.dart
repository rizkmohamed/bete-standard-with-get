import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/routes/app_pages.dart';

import '../controllers/splsh_screen_controller.dart';

class SplshScreenView extends GetView<SplshScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                        width: 32.81,
                        height: 60.48,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'أهلا بك في للأسر المنتجة',
                        style: TextStyle(
                          color: KColor_Text_Main_1,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: CustomButton_1(
                          lable: 'تسجيل الدخول',
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: KColor_Main_Primary_1,
                              )),
                          child: Center(
                              child: Text(
                            'انشاء حساب',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: KColor_Text_Main_2,
                              fontSize: 16,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Container()
                ],
              ),
            ),
            Positioned.fill(
              bottom: 50,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.DASHBOARD);
                  },
                  child: Text(
                    'تخطي تسجيل الدخول',
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
    );
  }
}
