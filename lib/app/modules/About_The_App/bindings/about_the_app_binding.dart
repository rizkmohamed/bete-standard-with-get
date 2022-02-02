import 'package:get/get.dart';

import '../controllers/about_the_app_controller.dart';

class AboutTheAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutTheAppController>(
      () => AboutTheAppController(),
    );
  }
}
