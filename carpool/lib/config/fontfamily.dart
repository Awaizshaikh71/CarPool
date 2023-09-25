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

  TextStyle getDescriptionFont() {
    return GoogleFonts.poppins(
        color: myColors().blackDescription,
        fontSize: 18,
        fontStyle: FontStyle.italic);
  }
}
