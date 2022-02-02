import 'package:get/get.dart';

import '../controllers/splsh_screen_controller.dart';

class SplshScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplshScreenController>(
      () => SplshScreenController(),
    );
  }
}
