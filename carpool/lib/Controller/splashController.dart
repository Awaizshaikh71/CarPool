import 'dart:async';

import 'package:carpool/exportlinks.dart';

class splashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("splashController");
    afterSplash();
  }

  afterSplash() {
    Timer(Duration(seconds: 12), () {
      Get.toNamed('/Login');
      print("Timer ran, navigating to Login screen");
    });
  }
}
