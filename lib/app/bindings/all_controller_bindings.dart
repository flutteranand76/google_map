import 'package:get/get.dart';
import 'package:google_map/app/modules/home/controllers/home_controller.dart';

class AllControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(),
      fenix: true,
    );
  }

}