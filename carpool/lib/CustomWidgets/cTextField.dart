import 'package:carpool/Controller/loginController.dart';
import 'package:carpool/exportlinks.dart';

pTextField({context, PlaceholderText, obscure}) {
  return GetBuilder<LoginController>(
    id: {'password'},
    init: LoginController(),
    initState: (state) => LoginController,
    builder: (controller) => TextField(
      obscureText: controller.secureText,
      decoration: InputDecoration(
          hintText: PlaceholderText,
          suffixIcon: GestureDetector(
            onTap: () {
              controller.makeSecure();
            },
            child: Icon(
              controller.secureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
          ),
          fillColor: myColors().textfieldFilled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )),
    ),
  );
}

eTextField({context, PlaceholderText}) {
  return GetBuilder<LoginController>(
    id: {'email'},
    init: LoginController(),
    initState: (state) => LoginController,
    builder: (controller) => TextField(
      decoration: InputDecoration(
          hintText: PlaceholderText,
          fillColor: myColors().textfieldFilled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          )),
    ),
  );
}