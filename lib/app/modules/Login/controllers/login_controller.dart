import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prod_family/app/Shared/ProgressIndicator.dart';
import 'package:prod_family/app/Shared/Snack_Bar.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/LogOut_Service.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/Login_Services.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/Login_Stat_Controller.dart';
import 'package:prod_family/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final loginState = Get.put(LoginStateController());

  //var isLogin = false.obs;
  var isLoading = false.obs; //

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); // Form

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
    if (value.length < 4) {
      return "كلمة المرور يجب الا تقل عن ٦ احرف";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    auth();
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

  //
  /// Login Customer
  //
  Future<void> auth() async {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        scrollable: true,
        content: Column(
          children: [
            Text(
              'الرجاء الانتظار',
            ),
            20.0.sizedHeight,
            Custom_ProgressIndicator(),
          ],
        ),
      ),
      barrierDismissible: false,
    );
    try {
      final _res = await Login(
        phoneController.text,
        passwordController.text,
      );
      Get.offAllNamed(Routes.DASHBOARD);
      // Get.close(2);
      // var token = _res.data.token;
      GetStorage().write('token', _res.data.token);
      print(_res.data.token);
      loginState.changeLoginState('Login');
      GetStorage().write('Token', _res.data.token);
      GetStorage().write('name', _res.data.name);
      GetStorage().write('email', _res.data.email);
      GetStorage().write('phone', _res.data.phone);
      GetStorage().write('userID', _res.data.id);
      update();
      //TODO: remove this line
      print('user log in');
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      if (e == 401) {
        var ex = 'خطأ في كلمة السر';
        showErrorSnackBar(ex);
      }
    }
  }

  //
  /// LogOut Customer
  //
  Future<void> SingOut() async {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.white,
        scrollable: true,
        content: Column(
          children: [
            Text(
              'جاري تسجيل الخروج',
            ),
            20.0.sizedHeight,
            Custom_ProgressIndicator(),
          ],
        ),
      ),
      barrierDismissible: false,
    );
    try {
      final _res = await LogOut(GetStorage().read('Token'));
      //isLogin(false);
      if (_res == '200') {
        loginState.changeLoginState('notLogin');
        //favoritController.wishList.clear();
        //cartController.cartItems.clear();
        Get.offAndToNamed(Routes.DASHBOARD);
        update();
        // var token = _res.data.tosken;
        //GetStorage().write('token', _res.contextToken);
        //token.write('loginState', 'LogOut');
        //TODO: remove this line
        print('user log out');
      }
      // GetCustomerData();
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      if (e == 401) {
        loginState.changeLoginState('notLogin');
        Get.offAndToNamed(Routes.DASHBOARD);
      }
    }
  }
}
