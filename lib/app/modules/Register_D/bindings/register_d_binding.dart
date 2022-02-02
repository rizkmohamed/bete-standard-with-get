import 'package:get/get.dart';

import '../controllers/register_d_controller.dart';

class RegisterDBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterDController>(
      () => RegisterDController(),
    );
  }
}
