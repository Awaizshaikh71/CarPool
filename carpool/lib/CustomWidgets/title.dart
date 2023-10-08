// ignore_for_file: non_constant_identifier_names

import 'package:carpool/exportlinks.dart';

Widget cTitle({text, context}) {
  return Text(
    text,
    style: MyFontStyle(context).getTitleFont(),
  );
}

Widget cWhiteTitle({text, context}) {
  return Text(
    text,
    style: MyFontStyle(context).getWhiteTitleFont(),
  );
}

Widget cbgColorTitle({text, context}) {
  return Text(
    text,
    style: MyFontStyle(context).getGreenTitleFont(),
  );
}

Widget LoginTitle({text, context}) {
  return Center(
    child: Text(
      text,
      style: MyFontStyle(context).getLoginTitleFont(),
      textAlign: TextAlign.center,
    ),
  );
}

Widget smallTitle({text, context, type}) {
  return GestureDetector(
    onTap: () => type == 'D'
        ? Get.toNamed('/driverSignup')
        : type != null
            ? Get.toNamed('/rideSignup')
            : null,
    child: Center(
      child: Text(
        text,
        style: MyFontStyle(context).smallTitleFont(),
      ),
    ),
  );
}
