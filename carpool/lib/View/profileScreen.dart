// ignore_for_file: file_names

import 'package:carpool/Controller/profileController.dart';
import 'package:carpool/exportlinks.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MySizes(context).screenHeight * 0.1,
            ),
            Center(
              child: CircleAvatar(
                radius: 80,
              ),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.05,
            ),
            SizedBox(
              width: MySizes(context).screenWidth * 0.8,
              child: myField(
                  context: context,
                  fieldType: "First Name",
                  PlaceholderText: "First Name"),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.03,
            ),
            SizedBox(
              width: MySizes(context).screenWidth * 0.8,
              child: myField(
                  context: context,
                  fieldType: "Last Name",
                  PlaceholderText: "Last Name"),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.03,
            ),
            SizedBox(
              width: MySizes(context).screenWidth * 0.8,
              child: myField(
                  context: context,
                  fieldType: "Last Name",
                  PlaceholderText: "Last Name"),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.03,
            ),
            SizedBox(
              width: MySizes(context).screenWidth * 0.8,
              child: myField(
                  context: context,
                  fieldType: "Email",
                  PlaceholderText: "Email"),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.03,
            ),
            SizedBox(
              width: MySizes(context).screenWidth * 0.8,
              child: myField(
                  context: context,
                  fieldType: "Phone",
                  PlaceholderText: "Phone No"),
            ),
            SizedBox(
              height: MySizes(context).screenHeight * 0.03,
            ),
            SizedBox(
                width: MySizes(context).screenWidth * 0.4,
                child: Cbutton(
                    // ignore: avoid_print
                    onPressed: () => controller.ShowDialog(context),
                    text: "Update",
                    context: context)),
          ],
        ),
      )),
    );
  }
}
