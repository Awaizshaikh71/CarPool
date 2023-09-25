import 'package:carpool/Controller/loginController.dart';
import 'package:carpool/exportlinks.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors().bgWhite,
      body: SafeArea(
          child: Column(
        children: [
          Lottie.asset('assets/animation/joinus.json'),
          LoginTitle(context: context, text: "Join Us"),
          SizedBox(
            width: MySizes(context).screenWidth * 0.8,
            height: MySizes(context).screenHeight * 0.05,
            child: eTextField(context: context, PlaceholderText: "Email"),
          ),
          SizedBox(
            width: MySizes(context).screenWidth * 0.8,
            height: MySizes(context).screenHeight * 0.05,
            child: pTextField(
                context: context,
                PlaceholderText: "Password",
                obscure: controller.secureText),
          ),
        ],
      )),
    );
  }
}
