import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/Shared/Text_Styles.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        title: Text(
          'مساعدة',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'كيف يمكننا مساعدتك',
                style: KText_Style_FormText,
              ),
              SizedBox(height: 10),
              Text(
                'تواصل معنا',
                style: KText_Style_FormText,
              ),
              SizedBox(height: 15),
              Form(
                  key: controller.loginFormKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الاسم رباعي',
                        style: KText_Style_FormText,
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "ادخل الاسم",
                            hintStyle: TextStyle(
                                color: Color(0xff96A0A5), fontSize: 12),
                            border: InputBorder.none),
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
                        'رقم الموبايل',
                        style: KText_Style_FormText,
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "0123456789",
                            hintStyle: TextStyle(
                                color: Color(0xff96A0A5), fontSize: 12),
                            border: InputBorder.none),
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
                        'البريد الالكتروني',
                        style: KText_Style_FormText,
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "test@test.com",
                            hintStyle: TextStyle(
                                color: Color(0xff96A0A5), fontSize: 12),
                            border: InputBorder.none),
                        keyboardType: TextInputType.phone,
                        controller: controller.phoneController,
                        onSaved: (value) {
                          controller.phone = value!;
                        },
                        validator: (value) {
                          return controller.validatePhone(value!);
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLines: 4,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: Color(0xffE7EDEF), width: 1.0)),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintText: "تواصل معنا",
                            hintStyle: TextStyle(
                                color: Color(0xff96A0A5), fontSize: 12),
                            border: InputBorder.none),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'اتصل بنا',
                            style: KText_Style_FormText,
                          ),
                          Text(
                            '0123456789',
                            style: KText_Style_FormText,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          onTap: () {
                            controller.checkLogin();
                          },
                          child: CustomButton_1(
                            lable: 'إرسال',
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
