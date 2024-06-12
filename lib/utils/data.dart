import 'dart:ui';

import '../features/models/card_model.dart';
import '../features/models/lang_model.dart';
import 'my_styles.dart';

final programmingLangForBeginner = [
  LangModel(
    langName: 'Python',
    color: Color.fromARGB(255, 31, 219, 213),
  ),
  LangModel(
    langName: 'C',
    color: const Color.fromARGB(255, 218, 159, 101),
  ),
  LangModel(
    langName: 'C#',
    color: Color.fromARGB(255, 137, 93, 191),
  ),
  LangModel(
    langName: 'Dart',
    color: Color.fromARGB(255, 19, 111, 230),
  ),
  LangModel(
    langName: 'PHP',
    color: Color.fromARGB(255, 202, 18, 219),
  ),
];

final webProgrammingLang = [
  LangModel(
    langName: 'HTML',
    color: Color.fromARGB(255, 235, 155, 8),
  ),
  LangModel(
    langName: 'CSS',
    color: Color.fromARGB(255, 18, 81, 217),
  ),
  LangModel(
    langName: 'JS',
    color: Color.fromARGB(255, 251, 244, 38),
  ),
  LangModel(
    langName: 'QUERY',
    color: Color.fromARGB(255, 163, 112, 9),
  ),
  LangModel(
    langName: 'BOOTSTRAP',
    color: Color.fromARGB(255, 27, 93, 225),
  ),
];

final data = [
  CardModel(
      title: 'مفهوم البرمجة',
      desc: 'تعريف البرمجة و العديد من الاسئلة المفيدة حول كيفية في التعلم',
      icon: 'assets/code.png',
      color: MyStyle.pinkcolor),
  CardModel(
      title: 'أساسيات البرمجة',
      desc: 'اهم التعريفات و المفاهيم التي يحتاجها كل مبرمج مبتدئ',
      icon: 'assets/code2.png',
      color: MyStyle.textcolor),
  CardModel(
      title: 'لغات البرمجة',
      desc: 'تعرف على لغات البرجمة التي يستخدمها المبرمجين في كتاب الاكواد',
      icon: 'assets/coding.png',
      color: MyStyle.primarycolo),
  CardModel(
    title: 'مواقع مهمة',
    desc: 'أهم المواقع التي سوف تساعدك في طريقك الى عالم البرمجة',
    icon: 'assets/browser.png',
    color: MyStyle.textgreycolor,
  ),
];
