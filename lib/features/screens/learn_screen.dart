import 'package:ajitstafd/utils/my_styles.dart';
import 'package:flutter/material.dart';
import '../../utils/data.dart';
import '../models/lang_model.dart';
import '../widgets/custom_circle_container.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                return CustomCircleContainer(
                  height: 40,
                  margin: 6,
                  langModel: LangModel(
                    langName: programmingLangForBeginner[index].langName,
                    color: programmingLangForBeginner[index].color,
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
                crossAxisCount: programmingLangForBeginner.length,
              ),
              itemCount: programmingLangForBeginner.length,
              itemBuilder: (context, index) {
                return CustomCircleContainer(
                  height: 40,
                  margin: 6,
                  langModel: LangModel(
                    langName: programmingLangForBeginner[index].langName,
                    color: programmingLangForBeginner[index].color,
                  ),
                );
              },
            ),
          ),
          Text(
            'لغات البرمجة',
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
                return CustomCircleContainer(
                  height: 40,
                  margin: 6,
                  langModel: LangModel(
                    langName: webProgrammingLang[index].langName,
                    color: webProgrammingLang[index].color,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
