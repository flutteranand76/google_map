import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/bindings/all_controller_bindings.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "'Google Maps App'",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AllControllerBindings(),
    ),
  );
}
