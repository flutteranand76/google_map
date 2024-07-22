import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() => controller.currentPosition == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
        initialCameraPosition:  CameraPosition(
          target: controller.googlePlex.value,
          zoom: 13,
        ),
        markers: {
          Marker(
            markerId: const MarkerId('currentLocation'),
            icon: BitmapDescriptor.defaultMarker,
            position: controller.currentPosition.value,
          ),
          Marker(
            markerId: const MarkerId('sourceLocation'),
            icon: BitmapDescriptor.defaultMarker,
            position: controller.googlePlex.value,
          ),
          Marker(
            markerId: const MarkerId('destinationLocation'),
            icon: BitmapDescriptor.defaultMarker,
            position: controller.mountainView.value,
          )
        },
        polylines: Set<Polyline>.of(controller.polylines.values),
      ),)
    );
  }
}
