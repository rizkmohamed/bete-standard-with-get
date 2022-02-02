import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInfoController extends GetxController {
  //var isLogin = false.obs;
  var isLoading = false.obs; //

  final GlobalKey<FormState> accountInfoFormKey =
      GlobalKey<FormState>(); // Form

  late TextEditingController phoneController, passwordController;
  var phone = '';
  var password = '';
  var obscureText = true.obs;
  @override
  void onInit() {
    super.onInit();
    // IsLogin();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
  }

  String? validatePhone(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال رقم الهاتف";
    }
    if (!GetUtils.isPhoneNumber(value)) {
      return "الرجاء ادخال رقم هاتف صحيح";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "الرجاء ادخال كلمة المرور";
    }
    if (value.length < 6) {
      return "كلمة المرور يجب الا تقل عن ٦ احرف";
    }
    return null;
  }

  void checkLogin() {
    final isValid = accountInfoFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // auth();
  }

  //
  // Change Password Visiblity
  //
  changPassVisiblit() {
    if (obscureText.value == true) {
      obscureText(false);
      print(obscureText.value);
    } else {
      obscureText(true);
      print(obscureText.value);
    }
  }
}
