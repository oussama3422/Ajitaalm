import 'package:ajitstafd/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/custom_button.dart';

class SourcesScreen extends StatelessWidget {
  static const String routeName = 'source-screen';
  const SourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: MyStyle.bgcolor,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(40),
            Image.asset(
              'assets/stack-overflow.png',
              height: 50,
            ),
            Gap(20),
            CustomButton(
              onTap: () {},
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                '''
                  ستاك أوفرفلو هو موقع ويب يختص بالمبرمجين ومطوري البرمجيات، ويُعد أحد أشهر المواقع في مجال البرمجة وتطوير البرمجيات. تم إطلاقه في عام 2008 من قِبل جيف أتوود وجويل سبولسكي كجزء من شبكة ستاك إكستشينج. ستاك أوفرفلو يُقدم منصة للمبرمجين لطرح الأسئلة والحصول على إجابات من زملائهم المبرمجين، إضافة إلى تبادل المعرفة والخبرات في مختلف مجالات البرمجة والتقنية.
                ''',
                style: MyStyle.todayBigTextStyle,
              ),
            ),
            Gap(40),
            Image.asset(
              'assets/github-logo.png',
              height: 50,
            ),
            Gap(20),
            CustomButton(
              onTap: () {},
            ),
            Container(
              child: Text(
                textAlign: TextAlign.center,
                '''
                  جيت هاب هي منصة تعاونية لتطوير البرمجيات تسمح للمطورين بالتعاون على مشاريع برمجية مختلفة. تُعتبر جيت هاب مكانًا لتخزين مشاريع البرمجيات وإدارتها باستخدام نظام التحكم بالنسخ الموزع جِت. توفر جيت هاب مجموعة من الأدوات والميزات التي تسهل عملية التعاون بين المطورين، بما في ذلك إدارة الإصدارات وتتبع الأخطاء وإدارة الطلبات الانتقالية وغيرها الكثير. تُعتبر جيت هاب واحدة من أكبر المنصات الإلكترونية المتاحة لمشاركة البرمجيات مفتوحة المصدر والمشاريع البرمجية الخاصة.
                ''',
                style: MyStyle.todayBigTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
