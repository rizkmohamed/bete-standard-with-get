import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/Login_Stat_Controller.dart';
import 'package:prod_family/app/modules/Login/controllers/login_controller.dart';
import 'package:prod_family/app/routes/app_pages.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final loginStat = Get.put(LoginStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Build_Header(),
            Divider(color: Colors.black, thickness: 0.2),
            if (loginStat.loginState == 'Login')
              _Build_Profile(
                lable: GetStorage().read('name'),
                onpress: () => Get.toNamed(Routes.ACCOUNT_INFO),
              ),
            if (loginStat.loginState != 'Login')
              _Build_Profile(
                onpress: () {
                  Get.toNamed(Routes.REGISTER_D);
                },
              ),
            _Build_Activity(),
            _Build_Settings()
          ],
        )),
      ),
    );
  }
}

class _Build_Settings extends StatelessWidget {
  final loginStat = Get.put(LoginStateController());
  final authController = Get.put(LoginController());

  _Build_Settings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Build_Sec_Header(lable: 'الاعدادات'),
          _Build_Option(
            onPress: () {
              Get.toNamed(Routes.FAQ);
            },
            lable: 'الأسئلة الأكثر شيوعاً',
            icon: Icons.help_sharp,
            color: Color(0xff7DD0F9),
          ),
          _Build_Option(
            onPress: () {
              Get.toNamed(Routes.ABOUT_THE_APP);
            },
            lable: 'عن التطبيق',
            icon: CustomIcons.phone,
            color: Color(0xff26ECD1),
          ),
          _Build_Option(
            onPress: () {
              Get.toNamed(Routes.POLICY);
            },
            lable: 'سياسة الخصوصية',
            icon: CustomIcons.lock,
            color: Color(0xffFFD933),
          ),
          _Build_Option(
            onPress: () {
              Get.toNamed(Routes.HELP);
            },
            lable: 'الدعم الفني',
            icon: CustomIcons.support,
            color: Color(0xff00928C),
          ),
          _Build_Option(
            onPress: () {},
            lable: 'فتح حساب تاجر',
            icon: CustomIcons.seller,
            color: Color(0xff7DD0F9),
          ),
          _Build_Option(
            onPress: () {},
            lable: 'صوت للتطبيق',
            icon: CustomIcons.hand,
            color: Color(0xffAFFE82),
            hasArrow: false,
          ),
          if (loginStat.loginState == 'Login')
            _Build_Option(
              onPress: () {
                authController.SingOut();
              },
              lable: 'تسجيل الخروج',
              icon: Icons.login,
              color: Color(0xffFF2D55),
              hasArrow: false,
            ),
        ],
      ),
    );
  }
}

class _Build_Activity extends StatelessWidget {
  final loginStat = Get.put(LoginStateController());

  _Build_Activity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _Build_Sec_Header(
            lable: 'نشاطاتي',
          ),
          _Build_Option(
            onPress: () {
              (loginStat.loginState == 'Login')
                  ? Get.toNamed(Routes.ACCOUNT_INFO)
                  : Get.toNamed(Routes.REGISTER_D);
            },
            lable: 'معلومات الحساب',
            icon: CustomIcons.person_1,
            color: Color(0xff7DD0F9),
          ),
          _Build_Option(
            onPress: () {
              (loginStat.loginState == 'Login')
                  ? Get.toNamed(Routes.MY_ORDERS)
                  : Get.toNamed(Routes.REGISTER_D);
            },
            lable: 'طلباتي',
            icon: CustomIcons.proceed_order,
            color: KColor_Main_Primary_1,
          ),
          _Build_Option(
            onPress: () {
              (loginStat.loginState == 'Login')
                  ? Get.toNamed(Routes.FAVORIT)
                  : Get.toNamed(Routes.REGISTER_D);
            },
            lable: 'عناصر محفوظة',
            icon: CustomIcons.hart,
            color: Color(0xffFF2D55),
          ),
          _Build_Option(
            onPress: () {
              (loginStat.loginState == 'Login')
                  ? Get.toNamed(Routes.RECENTLY_SEE)
                  : Get.toNamed(Routes.REGISTER_D);
            },
            lable: 'تم مشاهدتها مؤخراً',
            icon: CustomIcons.watch,
            color: Color(0xffAFFE82),
          )
        ],
      ),
    );
  }
}

class _Build_Option extends StatelessWidget {
  const _Build_Option(
      {required this.lable,
      required this.icon,
      required this.color,
      required this.onPress,
      this.hasArrow = true});

  final String lable;
  final IconData icon;
  final Color color;
  final Function() onPress;
  final bool hasArrow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GestureDetector(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    icon,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  lable,
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
            if (hasArrow == true)
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xffB2B2B2),
                size: 20,
              )
          ],
        ),
      ),
    );
  }
}

class _Build_Sec_Header extends StatelessWidget {
  const _Build_Sec_Header({required this.lable});

  final String lable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.1, color: Colors.black),
          ),
          color: KColor_Decoration_1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
              child: Text(
                lable,
                style: TextStyle(
                  color: Color.fromRGBO(60, 60, 67, 80),
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Build_Profile extends StatelessWidget {
  _Build_Profile({this.lable = 'تسجيل الدخول', required this.onpress});

  final String lable;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        onTap: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          blurRadius: 15,
                          //spreadRadius: 0,
                          offset: Offset(0, 5),
                        )
                      ]),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      child: Icon(
                        CustomIcons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  lable,
                  style: TextStyle(
                    color: Color(0xff0E263F),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffB2B2B2),
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

class _Build_Header extends StatelessWidget {
  final loginStat = Get.put(LoginStateController());

  _Build_Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              if (loginStat.loginState == 'Login')
                Text(
                  'مرحباً' + ' ' + GetStorage().read('name'),
                  style: TextStyle(color: Color(0xff007AFF), fontSize: 17),
                ),
              SizedBox(height: 10),
              if (loginStat.loginState != 'Login')
                Text(
                  'مرحباً بك',
                  style: TextStyle(color: Color(0xff007AFF), fontSize: 17),
                ),
              Text(
                'الملف الشخصي',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
