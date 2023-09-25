import 'package:carpool/Controller/loginController.dart';
import 'package:carpool/exportlinks.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    print("LoginBinding");
    Get.lazyPut<LoginController>(() => LoginController());
    // Get.put<Service>(()=> Api());
  }
}
