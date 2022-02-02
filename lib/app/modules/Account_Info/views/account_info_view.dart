import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/account_info_controller.dart';

class AccountInfoView extends GetView<AccountInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          title: Text(
            'معلومات الحساب',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Stack(
              children: [
                Form(
                    key: controller.accountInfoFormKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('الاسم'),
                            Container(
                              width: Get.width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "Ahmed Mohammed",
                                  hintStyle: KText_Style_14_G,
                                  suffixIcon: Icon(
                                    CustomIcons.pen,
                                    size: 16,
                                    color: Color(0xffF62A66),
                                  ),
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
                            ),
                          ],
                        ),
                        Divider(height: 0),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('البريد الالكتروني'),
                            Container(
                              width: Get.width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "test@test.com",
                                  hintStyle: KText_Style_14_G,
                                  suffixIcon: Icon(
                                    CustomIcons.pen,
                                    size: 16,
                                    color: Color(0xffF62A66),
                                  ),
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
                            ),
                          ],
                        ),
                        Divider(height: 0),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('الجنس'),
                            Container(
                              width: Get.width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "ذكر",
                                  hintStyle: KText_Style_14_G,
                                  suffixIcon: Icon(
                                    CustomIcons.pen,
                                    size: 16,
                                    color: Color(0xffF62A66),
                                  ),
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
                            ),
                          ],
                        ),
                        Divider(height: 0),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('تاريخ الميلاد'),
                            Container(
                              width: Get.width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "1/1/2021",
                                  hintStyle: KText_Style_14_G,
                                  suffixIcon: Icon(
                                    CustomIcons.pen,
                                    size: 16,
                                    color: Color(0xffF62A66),
                                  ),
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
                            ),
                          ],
                        ),
                        Divider(height: 0),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('كلمة المرور'),
                            Container(
                              width: Get.width / 1.8,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: "*****",
                                  hintStyle: KText_Style_14_G,
                                  suffixIcon: Icon(
                                    CustomIcons.pen,
                                    size: 16,
                                    color: Color(0xffF62A66),
                                  ),
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
                            ),
                          ],
                        ),
                        Divider(height: 0),
                      ],
                    )),
                Positioned.fill(
                  bottom: 130,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        // Get.toNamed(Routes.REGISTER_1);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: CustomButton_4(
                          lable: 'حفظ التعديلات',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
