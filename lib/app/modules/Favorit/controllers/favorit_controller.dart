import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:prod_family/app/Shared/ProgressIndicator.dart';
import 'package:prod_family/app/Shared/Snack_Bar.dart';
import 'package:prod_family/app/data/Services/Product/Products/Favorite.dart';

class FavoritController extends GetxController {
  var token = GetStorage().read('Token');

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  //
  /// Login Customer
  //
  Future<void> auth(String productID) async {
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
      final _res = await Add_Remove_Favorite(token, productID);
      //Get.offAllNamed(Routes.DASHBOARD);
      // Get.close(2);
      update();
      //TODO: remove this line
      print('Done Add To Favorite log in');
    } catch (e) {
      if (Get.isDialogOpen == true) Get.back();
      if (e == 401) {
        var ex = 'خطأ في كلمة السر';
        showErrorSnackBar(ex);
      }
    }
  }
}
