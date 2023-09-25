import 'package:carpool/exportlinks.dart';

class LoginController extends GetxController {
  bool secureText = false;

  makeSecure() {
    print("makesecure press");
    secureText == false ? secureText = true : secureText = false;
    print("makesecure press $secureText");

    update(['password']);
  }
}
