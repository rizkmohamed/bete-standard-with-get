import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prod_family/app/data/Services/Product/Categores/Get_Categores.dart';
import 'package:prod_family/app/data/Services/Product/Products/Get_Products_By_Cat.dart';

class MarkitController extends GetxController {
  final List<String> gender = ["HPrice", "LPrice", "RAdd"];
  var isLoading = true.obs;
  var isLoading1 = true.obs;

  ///
  /// Change Selecte Category Style
  ///
  var selectedCatIndex = 0.obs;
  onSelectCat(int index) {
    selectedCatIndex.value = index;
  }
//

  ///
  var categoriesLis = [].obs;
  var CategoriesListL = 0.obs;
  var ProductsByCatList = [].obs;
  var categoryID = 0.obs;
  var IsCatSelected = false.obs;
  void fetchCategories() async {
    try {
      var items = await GetCategories();
      categoriesLis.value = items.data;
      CategoriesListL.value = items.data.length;
      print('All Categoreis Here From Controller');
      print(categoriesLis.length);
      print(CategoriesListL);
      fetchProductsByCat(categoriesLis[0].id.toString());
      update();
    } finally {
      isLoading(false);
    }
  }

  ///
  var select = '';
  void onClickRadioButton(value) {
    print(value);
    select = value;
    update();
  }

  var selectE = false;
  void onClickSelectE(value) {
    print(value);
    selectE = value;
    update();
  }

  ///
  ///

  void fetchProductsByCat(String catID) async {
    try {
      isLoading1(true);
      var products = await GetCategoriProducts(catID);

      ProductsByCatList.value = products.data.products;
      print('All  Product By Cat Here');
      print(ProductsByCatList.length);
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      if (e == 403) {
        // loginState.changeLoginState('notLogin');
        // Get.offAndToNamed(Routes.MAIN_PAGE);
      }
    } finally {
      isLoading1(false);
    }
  }
  //
  // var isLoading = false.obs; //

  final GlobalKey<FormState> felterFormKey = GlobalKey<FormState>(); // Form

  late TextEditingController phoneController, passwordController;
  var phone = '';
  var password = '';

  @override
  void onInit() {
    super.onInit();
    this.fetchCategories();

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

  void checkLogin() {
    final isValid = felterFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // auth();
  }
}
