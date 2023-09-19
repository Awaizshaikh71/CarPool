import 'package:carpool/exportlinks.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    print("SplashBinding");
    Get.lazyPut<splashController>(() => splashController());
    // Get.put<Service>(()=> Api());
  }
}
