import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/Shared/CustomButtons.dart';
import 'package:prod_family/app/modules/Register/controllers/register_controller.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.registerFormKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أدخل اسم المستخدم',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: KColor_Text_Main_2,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: " الاسم الاول - الاسم الثاني",
              ),
              keyboardType: TextInputType.name,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GetBuilder<RegisterController>(
                    init: RegisterController(),
                    initState: (_) {},
                    builder: (_) {
                      return DropdownButtonFormField(
                          dropdownColor: Colors.white,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10)),
                          onChanged: (newValue) {},
                          value: controller.salu,
                          validator: (value) {
                            // return controller
                            //     .validateSalutaion(value.toString());
                          },
                          items: [
                            for (var data in controller.cityList)
                              DropdownMenuItem(
                                child: new Text(
                                  data,
                                ),
                                value: data,
                              )
                          ]);
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GetBuilder<RegisterController>(
                    init: RegisterController(),
                    initState: (_) {},
                    builder: (_) {
                      return DropdownButtonFormField(
                          dropdownColor: Colors.white,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10)),
                          onChanged: (newValue) {},
                          value: controller.salu,
                          validator: (value) {
                            // return controller
                            //     .validateSalutaion(value.toString());
                          },
                          items: [
                            for (var data in controller.cityList)
                              DropdownMenuItem(
                                child: new Text(
                                  data,
                                ),
                                value: data,
                              )
                          ]);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'المحافظة',
            //             style: TextStyle(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w600,
            //               color: KColor_Text_Main_2,
            //             ),
            //           ),
            //           TextFormField(
            //             decoration: InputDecoration(
            //                 hintText: "محافظة بابل",
            //                 suffixIcon: IconButton(
            //                   icon: Icon(Icons.keyboard_arrow_down),
            //                   onPressed: () {},
            //                 )),
            //             keyboardType: TextInputType.phone,
            //             controller: controller.phoneController,
            //             onSaved: (value) {
            //               controller.phone = value!;
            //             },
            //             validator: (value) {
            //               return controller.validatePhone(value!);
            //             },
            //           ),
            //           SizedBox(height: 20),
            //         ],
            //       ),
            //     ),
            //     SizedBox(width: 20),
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'أدخل اسم المدينة',
            //             style: TextStyle(
            //               fontSize: 14,
            //               fontWeight: FontWeight.w600,
            //               color: KColor_Text_Main_2,
            //             ),
            //           ),
            //           TextFormField(
            //             decoration: InputDecoration(
            //               hintText: "أربيل",
            //             ),
            //             keyboardType: TextInputType.name,
            //             controller: controller.phoneController,
            //             onSaved: (value) {
            //               controller.phone = value!;
            //             },
            //             validator: (value) {
            //               return controller.validatePhone(value!);
            //             },
            //           ),
            //           SizedBox(height: 20),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
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
                      hintText: '••••••••',
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
            SizedBox(height: 10),
            Text('كلمة المرور يجب أن تتكون من ثلاث حروف/أرقام على الأقل'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CheckboxListTile(
                title: Text(
                  'أوافق على شروط وسياسة الخصوصية',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                value: false,
                onChanged: (newValue) {
                  // setState(() {
                  //   checkedValue = newValue;
                  // }
                  // );
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  controller.checkLogin();
                },
                child: CustomButton_1(
                  lable: 'ابدأ',
                ),
              ),
            ),
          ],
        ));
  }
}
