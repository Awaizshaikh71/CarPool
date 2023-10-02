import 'package:carpool/exportlinks.dart';

class MyFontStyle {
  late BuildContext context; // Make it non-nullable

  MyFontStyle(this.context);

  TextStyle getTitleFont() {
    return GoogleFonts.poppins(color: myColors().blackTitle, fontSize: 30);
  }

  TextStyle getLoginTitleFont() {
    return GoogleFonts.poppins(color: myColors().blackTitle, fontSize: 30);
  }

  TextStyle smallTitleFont() {
    return GoogleFonts.poppins(color: myColors().redTitle, fontSize: 15);
  }

  TextStyle mediumTitleFont() {
    return GoogleFonts.poppins(color: myColors().blackTitle, fontSize: 25);
  }

  TextStyle getLoginbtnTitleFont() {
    return GoogleFonts.poppins(color: myColors().whiteTitle, fontSize: 20);
  }

  TextStyle getDescriptionFont() {
    return GoogleFonts.poppins(
        color: myColors().blackDescription,
        fontSize: 18,
        fontStyle: FontStyle.italic);
  }
}
