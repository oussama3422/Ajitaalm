import 'package:ajitstafd/utils/my_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  const CustomButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'زيارة الموقع',
        style: MyStyle.second16TextStyle,
      ),
    );
  }
}
