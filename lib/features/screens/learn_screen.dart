import 'package:ajitstafd/features/widgets/lesson_page.dart';
import 'package:flutter/material.dart';
import 'package:ajitstafd/utils/my_styles.dart';
import '../../utils/data.dart';
import '../models/lang_model.dart';
import '../widgets/custom_circle_container.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'لغات البرمجة للمبتدئين',
              style: MyStyle.blackalarmTextStyle,
            ),
            Container(
              alignment: Alignment.center,
              height: 120,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: programmingLangForBeginner.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonsPage(langModel: programmingLangForBeginner[index]),
                        ),
                      );
                    },
                    child: CustomCircleContainer(
                      height: 40,
                      margin: 6,
                      langModel: LangModel(
                        langName: programmingLangForBeginner[index].langName,
                        color: programmingLangForBeginner[index].color,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'لغات البرمجة للويب',
              style: MyStyle.blackalarmTextStyle,
            ),
            Container(
              height: 120,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: webProgrammingLang.length,
                ),
                itemCount: webProgrammingLang.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonsPage(langModel: webProgrammingLang[index]),
                        ),
                      );
                    },
                    child: CustomCircleContainer(
                      height: 40,
                      margin: 6,
                      langModel: LangModel(
                        langName: webProgrammingLang[index].langName,
                        color: webProgrammingLang[index].color,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'لغات البرمجة التطبيقات',
              style: MyStyle.blackalarmTextStyle,
            ),
            Container(
              height: 120,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: mobileProgrammingLang.length,
                ),
                itemCount: mobileProgrammingLang.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonsPage(langModel: mobileProgrammingLang[index]),
                        ),
                      );
                    },
                    child: CustomCircleContainer(
                      height: 40,
                      margin: 6,
                      langModel: LangModel(
                        langName: mobileProgrammingLang[index].langName,
                        color: mobileProgrammingLang[index].color,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'اطارات العمل',
              style: MyStyle.blackalarmTextStyle,
            ),
            Container(
              height: 120,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: frameworkList.length,
                ),
                itemCount: frameworkList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LessonsPage(langModel: frameworkList[index]),
                        ),
                      );
                    },
                    child: CustomCircleContainer(
                      height: 40,
                      margin: 6,
                      langModel: LangModel(
                        langName: frameworkList[index].langName,
                        color: frameworkList[index].color,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:ajitstafd/utils/my_styles.dart';
// import 'package:ajitstafd/utils/data.dart';
// import '../models/lang_model.dart';
// import '../widgets/custom_circle_container.dart';

// class LearnScreen extends StatelessWidget {
//   const LearnScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text(
//               'لغات البرمجة للمبتدئين',
//               style: MyStyle.blackalarmTextStyle,
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 120,
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 5,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: programmingLangForBeginner.length,
//                 itemBuilder: (context, index) {
//                   return CustomCircleContainer(
//                     height: 60, 
//                     margin: 6,
//                     langModel: programmingLangForBeginner[index],
//                   );
//                 },
//               ),
//             ),
//             Text(
//               'لغات البرمجة للويب',
//               style: MyStyle.blackalarmTextStyle,
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 120,
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 5,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: webProgrammingLang.length,
//                 itemBuilder: (context, index) {
//                   return CustomCircleContainer(
//                     height: 60, 
//                     margin: 6,
//                     langModel: webProgrammingLang[index],
//                   );
//                 },
//               ),
//             ),
//             Text(
//               'لغات البرمجة التطبيقات',
//               style: MyStyle.blackalarmTextStyle,
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 120,
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 5,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: mobileProgrammingLang.length,
//                 itemBuilder: (context, index) {
//                   return CustomCircleContainer(
//                     height: 60, 
//                     margin: 6,
//                     langModel: mobileProgrammingLang[index],
//                   );
//                 },
//               ),
//             ),
//             Text(
//               'اطارات العمل',
//               style: MyStyle.blackalarmTextStyle,
//             ),
//             Container(
//               alignment: Alignment.center,
//               height: 120,
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 5,
//                   childAspectRatio: 1,
//                 ),
//                 itemCount: frameworkList.length,
//                 itemBuilder: (context, index) {
//                   return CustomCircleContainer(
//                     height: 60, 
//                     margin: 6,
//                     langModel: frameworkList[index],
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
