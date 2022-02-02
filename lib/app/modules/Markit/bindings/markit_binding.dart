import 'package:get/get.dart';

import '../controllers/markit_controller.dart';

class MarkitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarkitController>(
      () => MarkitController(),
    );
  }
}
