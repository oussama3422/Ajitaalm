import 'dart:ui';
import '../features/models/card_model.dart';
import '../features/models/lang_model.dart';
import '../features/models/programming_lang.dart';
import 'my_styles.dart';

final programmingLangForBeginner = [
  LangModel(
    langName: 'python',
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
    langName: 'dart',
    color: Color.fromARGB(255, 19, 111, 230),
  ),
  LangModel(
    langName: 'php',
    color: Color.fromARGB(255, 202, 18, 219),
  ),
];
final frameworkList = [
  LangModel(
    langName: 'Flutter',
    color: Color.fromARGB(255, 31, 219, 213),
  ),
  LangModel(
    langName: 'React',
    color: const Color.fromARGB(255, 218, 159, 101),
  ),
  LangModel(
    langName: 'Xamarin',
    color: Color.fromARGB(255, 137, 93, 191),
  ),
  LangModel(
    langName: 'Vue',
    color: Color.fromARGB(255, 19, 111, 230),
  ),
  LangModel(
    langName: 'Laravel',
    color: Color.fromARGB(255, 202, 18, 219),
  ),
];

final webProgrammingLang = [
  LangModel(
    langName: 'HTML',
    color: Color.fromARGB(255, 235, 155, 8),
  ),
  LangModel(
    langName: 'css',
    color: Color.fromARGB(255, 18, 81, 217),
  ),
  LangModel(
    langName: 'js',
    color: Color.fromARGB(255, 251, 244, 38),
  ),
  LangModel(
    langName: 'query',
    color: Color.fromARGB(255, 163, 112, 9),
  ),
  LangModel(
    langName: 'bootstrap',
    color: Color.fromARGB(255, 33, 146, 239),
  ),
];

final mobileProgrammingLang = [
  LangModel(
    langName: 'java',
    color: Color.fromARGB(255, 243, 76, 9),
  ),
  LangModel(
    langName: 'kotlin',
    color: Color.fromARGB(255, 43, 246, 229),
  ),
  LangModel(
    langName: 'swift',
    color: Color.fromARGB(255, 245, 234, 110),
  ),
  LangModel(
    langName: 'Objectiv C',
    color: Color.fromARGB(255, 245, 234, 110),
  ),
  LangModel(
    langName: 'Dart',
    color: Color.fromARGB(255, 27, 93, 225),
  ),
];

final data = [
  CardModel(
    title: 'مفهوم البرمجة',
    desc: 'تعريف البرمجة و العديد من الاسئلة المفيدة حول كيفية في التعلم',
    icon: 'assets/code.png',
    color: MyStyle.pinkcolor,
  ),
  CardModel(
    title: 'أساسيات البرمجة',
    desc: 'اهم التعريفات و المفاهيم التي يحتاجها كل مبرمج مبتدئ',
    icon: 'assets/code2.png',
    color: MyStyle.textcolor,
  ),
  CardModel(
    title: 'لغات البرمجة',
    desc: 'تعرف على لغات البرجمة التي يستخدمها المبرمجين في كتاب الاكواد',
    icon: 'assets/coding.png',
    color: MyStyle.primarycolo,
  ),
  CardModel(
    title: 'مواقع مهمة',
    desc: 'أهم المواقع التي سوف تساعدك في طريقك الى عالم البرمجة',
    icon: 'assets/browser.png',
    color: MyStyle.textgreycolor,
  ),
];

// api youtube array

final List<ProgrammingLanguage> languages = [
  ProgrammingLanguage(name: 'Python', query: 'Python programming'),
  ProgrammingLanguage(name: 'JavaScript', query: 'JavaScript programming'),
  ProgrammingLanguage(name: 'Java', query: 'Java programming'),
  // Add more languages as needed
];
