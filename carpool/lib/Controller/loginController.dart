import 'package:carpool/exportlinks.dart';

class LoginController extends GetxController {
  bool secureText = true;

  makeSecure() {
    if (secureText == false) {
      secureText = true;
    } else {
      secureText = false;
    }

    print("makesecure press $secureText");

    update(['password']);
  }
}
