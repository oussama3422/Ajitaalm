import 'package:ajitstafd/utils/my_styles.dart';
import 'package:flutter/material.dart';
import '../models/card_model.dart';

class CardWidget extends StatelessWidget {
  final CardModel cardModel;
  const CardWidget({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment
                .center, // Ensures left alignment for LTR text
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  cardModel.title,
                  style: MyStyle.todayBigTextStyle,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 300,
                child: Text(
                  cardModel.desc,
                  style: MyStyle.todaysmallTextStyle,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 40,
              color: cardModel.color,
              child: Center(
                child: Image.asset(
                  cardModel.icon,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
