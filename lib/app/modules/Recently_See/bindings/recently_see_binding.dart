import 'package:get/get.dart';

import '../controllers/recently_see_controller.dart';

class RecentlySeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentlySeeController>(
      () => RecentlySeeController(),
    );
  }
}
