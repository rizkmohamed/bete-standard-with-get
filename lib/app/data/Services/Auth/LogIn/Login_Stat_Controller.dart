import 'package:get/get.dart';
import 'package:prod_family/app/data/Services/Auth/LogIn/Login_Stat.dart';

class LoginStateController extends GetxController {
  var loginState = 'notLogin';

  @override
  void onInit() async {
    super.onInit();
    LoginState localStorage = LoginState();

    // ignore: unnecessary_null_comparison
    loginState = await localStorage.loginStateSelected == null
        ? loginState = 'notLogin'
        : await localStorage.loginStateSelected;
    update();
    // Get.updateLocale(Locale(appLocale));
  }

  void changeLoginState(String state) async {
    LoginState localStorage = LoginState();

    if (loginState == state) {
      return;
    }
    if (state == 'notLogin') {
      loginState = 'notLogin';
      localStorage.saveLoginStatToDisk('notLogin');
    } else {
      loginState = 'Login';
      localStorage.saveLoginStatToDisk('Login');
    }
    update();
  }
}
