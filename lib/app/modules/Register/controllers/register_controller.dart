import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/data/Models/Context/Contry_Arya.dart';
import 'package:prod_family/app/data/Services/Context/get_Arya.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs; //

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController phoneController,
      passwordController,
      imController,
      compnyController;
  var phone = '';
  var password = '';
  var im = 'Im';
  var salu = 'Title';
  var obscureText = true.obs;

  ///

  //Declaration and initializations
  // late AryeaList model;
  // Rx<List<Arya>> userTypeListM = Rx<List<Arya>>();
  // Rx<Arya>selectedUserType = Rx<Arya>();
  // Rx<String>userTypeId = Rx<String>();

  //this is used, just to avoid any null error until list is fetched
  var toggle = false.obs;

  // //This is a sample api call, fetch your data/list and assign list to RxList,
  // //Your API Call goes right in this method
  // getList() async {
  //   String data = await rootBundle.loadString('assets/user_type.json');
  //   model = dropdownModelFromJson(data);
  //   //if in case userTypeListM.value doesn't work then try userTypeListM.assignAll(model.users)
  //   userTypeListM.value = model.users;
  //   toggle.value = true;
  // }
  onSelectionChange(value) {
    im = value;
    //userTypeId.value = value.userTypeId;
  }

  ///
  List cityList = ['Title', 'Mr', 'Mis'];
  List areyaList = [];

  @override
  void onInit() {
    super.onInit();
    this.fetchArya();
    // IsLogin();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    imController = TextEditingController();
    compnyController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    imController.dispose();
    compnyController.dispose();
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

  String? validateAccountType(String value) {
    if (value == 'Im'.tr) {
      return "Vaccount".tr;
    }
    return null;
  }

  String? validateCompnyName(String value) {
    // if (companyAccount.value) if (GetUtils.isNull(value)) {
    //   return "VcompnyName".tr;
    // }
    return null;
  }

  void checkLogin() {
    final isValid = registerFormKey.currentState!.validate();
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

  void fetchArya() async {
    try {
      isLoading(true);
      var aryas = await GetArya();
      areyaList = aryas.data;
      print('All Aryas Here');
      print(areyaList.length);
      toggle.value = true;
      update();
    } finally {
      isLoading(false);
    }
  }
}
