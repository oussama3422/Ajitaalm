import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStyle {
  static const Color primarycolo = Color(0xFF008aae);
  static const Color logocolo = Colors.black; // #b30e35
  static const Color secondarycolo = Color(0xFFf3e9df); //#f3e9df
  static const Color secondcolo = Color.fromARGB(255, 181, 220, 230); //#f3e9df
  static const Color pinkcolor = Color(0xFFfc7979);
  static const Color reddcolor = Color(0xFFff3131);
  static const Color textcolor = Color(0xFF143453); // #15273f
  static const Color textqcolor = Color(0xFF15273f); // #15273f
  // static const Color textqcolor = Color(0xFFfbc88d); // #fbc88d
  static const Color textlinkcolor = Color(0xFFf28e72); // #f28e72
  static const Color textgreycolor = Color(0xFF8896A9); // #8896A9 middle grey
  static const Color bgcolor = Color(0xFF15191f); // #15191f

  // static const String fontfam = "Helvetica";

  static TextStyle titleTextStyle = TextStyle(
    color: textcolor,
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(28),
  );
  static TextStyle statTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(28),
    color: textcolor,
  );
  static TextStyle second18TextStyle = TextStyle(
    color: textcolor,
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );
  static TextStyle second20TextStyle = TextStyle(
    color: textcolor,
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(18),
  );
  static TextStyle second16TextStyle = TextStyle(
    color: textcolor,
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );
  static TextStyle second22TextStyle = TextStyle(
    color: textcolor,
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(20),
  );

  static TextStyle dashTextStyle = TextStyle(
    color: textgreycolor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );

  static TextStyle dash13TextStyle = TextStyle(
    color: textgreycolor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(13),
  );

  static TextStyle regulargreyTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(16),
    color: textgreycolor,
    // fontFamily: fontfamr,
  );
  static TextStyle subtitleTextStyle = TextStyle(
    color: textcolor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(20),
  );
  static TextStyle dashTextcoloStyle = TextStyle(
    color: textcolor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );
  static TextStyle buttTextStyle = TextStyle(
    color: MyStyle.primarycolo,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );
  static TextStyle buttwhtieTextStyle = TextStyle(
    color: textqcolor,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );
  static TextStyle buttwhtieTextStylereal = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(16),
  );

  static TextStyle blackalarmTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(20),
    color: Colors.black87,
  );
  static TextStyle blackCatTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(12),
    color: Colors.black87,
  );
  static TextStyle regularwhiteTextStyle = TextStyle(
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(14),
    color: textqcolor,
  );
  static TextStyle regular12TextStyle = TextStyle(
    // fontFamily: fontfamb,
    fontWeight: FontWeight.bold,
    fontSize: ScreenUtil().setSp(12),
    color: textcolor,
  );
  static TextStyle regularTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(16),
    color: textcolor,
    // fontFamily: fontfamr,
  );

  static TextStyle smallwhiteTextStyle = TextStyle(
      fontSize: ScreenUtil().setSp(7),
      color: textqcolor,
      fontWeight: FontWeight.bold
      // fontFamily: fontfamr,
      );
  static TextStyle white20TextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(18),
    color: textqcolor,
    // fontFamily: fontfamr,
  );

  static TextStyle sgreyTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    color: textgreycolor,
    // fontFamily: fontfamr,
  );
  static TextStyle todayTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: primarycolo,
    // fontFamily: fontfamr,
    fontWeight: FontWeight.bold,
  );
  static TextStyle todaysoftTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: primarycolo,
    // fontFamily: fontfamr,
  );
  static TextStyle todaysmallTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(13),
    color: primarycolo,
    // fontFamily: fontfamr,
    fontWeight: FontWeight.bold,
  );
  static TextStyle todayBigTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(30),
    color: primarycolo,
    // fontFamily: fontfamr,
    fontWeight: FontWeight.bold,
  );
  static TextStyle playernameTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle blacksmallTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(13),
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle linkTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(13),
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );

  //

  static BoxDecoration storedecoration(
      {Color colo = Colors.white, String? image}) {
    return BoxDecoration(
      color: colo,
      // image: DecorationImage(
      //   image: NetworkImage(
      //     image.toString(),
      //   ),
      //   fit: BoxFit.cover,

      // ),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.25), //
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
    );
  }

  // static BoxDecoration cardhome() {
  //   return BoxDecoration(
  //     color: Colors.white,
  //     borderRadius: BorderRadius.circular(12),
  //     boxShadow: [
  //       BoxShadow(
  //         color: Colors.grey[300]!,
  //         spreadRadius: 0,
  //         blurRadius: 10,
  //         offset: Offset(0, 3), // changes position of shadow
  //       ),
  //     ],
  //   );
  // }

  static InputDecoration inputregular(String hint,
      {Icon? icon, Icon? oneicon}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontSize: 17,
        color: textcolor.withOpacity(.39),
      ),
      fillColor: textgreycolor,
      enabledBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: textgreycolor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: MyStyle.textlinkcolor),
      ),
      errorBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: reddcolor),
      ),
      suffixIcon: icon,
      filled: true,
      prefixIcon: oneicon,
      // labelText: hint,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24.0),
      // labelStyle: TextStyle(
      //   fontSize: 17,
      //   color: textcolor.withOpacity(.39),
      // ),
    );
  }

  static BoxDecoration cardhome() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.1),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }

  static cardbhome() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.2),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }

  static InputDecoration inputregulare(hint, {radius = 100.0}) {
    return InputDecoration(
      hintText: hint,
      labelStyle: TextStyle(color: MyStyle.textgreycolor),
      errorStyle: TextStyle(color: MyStyle.pinkcolor),
      hintStyle: TextStyle(color: MyStyle.textgreycolor),
      contentPadding:
          EdgeInsets.only(bottom: 9.w, top: 9.w, left: 28.0, right: 18.0),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(
            color: textgreycolor,
            width: 1,
          )),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(color: MyStyle.textgreycolor),
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: MyStyle.pinkcolor)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: MyStyle.pinkcolor)),
    );
  }

  // -------------

  static void err(sc, String text, {color = Colors.red}) {
    return sc(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
                maxLines: 2,
              ),
            ),
            Icon(Icons.error)
          ],
        ),
        backgroundColor: color,
      ),
    );
  }

  // -------------
  // -------------

  // -------------
  static String returnNull(int? o) {
    if (o == null)
      return "1";
    else
      return o.toString();
  }

  static bool isNullEmptyOrFalse(Object? o) =>
      o == null || false == o || "" == o;

  static bool isNullEmptyFalseOrZero(Object? o) =>
      o == null || false == o || 0 == o || "" == o;

  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  DateTime now = DateTime.now();
  static int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  static bool checkdayrun(user) {
    DateTime now = DateTime.now();

    // print("${user.lastsmileDate!.day} .. ${now.day - 1}");
    if ((user.lastsmileDate!.month == now.month) &&
        (user.lastsmileDate!.day == now.day - 1 ||
            user.lastsmileDate!.day == now.day)) {
      return true;
    } else {
      return false;
    }
  }

  static bool checkdayrundate(date) {
    DateTime now = DateTime.now();

    // print("${date.lastsmileDate!.day} .. ${now.day - 1}");
    if ((date!.month == now.month) &&
        (date!.day == now.day - 1 || date!.day == now.day)) {
      return true;
    } else {
      return false;
    }
  }

  static bool justyesterday(date) {
    DateTime now = DateTime.now();

    // print("${user.lastsmileDate!.day} .. ${now.day - 1}");
    if ((date!.month == now.month) &&
        (date!.day == now.day - 1 && date!.day != now.day)) {
      return true;
    } else {
      return false;
    }
  }
}
