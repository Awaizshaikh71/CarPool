import 'package:carpool/exportlinks.dart';

class ProfileController extends GetxController {
  ShowDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Profile Update'),
          content: Text('Your profile is successfully updated'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }
}
