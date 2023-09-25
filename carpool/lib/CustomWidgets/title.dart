import 'package:carpool/config/fontfamily.dart';
import 'package:carpool/exportlinks.dart';

Widget cTitle({text, context}) {
  return Text(
    text,
    style: MyFontStyle(context).getTitleFont(),
  );
}

Widget LoginTitle({text, context}) {
  return Center(
    child: Text(
      text,
      style: MyFontStyle(context).getLoginTitleFont(),
    ),
  );
}
