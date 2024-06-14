// import 'package:ajitstafd/features/models/lang_model.dart';
// import 'package:ajitstafd/utils/my_styles.dart';
// import 'package:flutter/material.dart';

// class CustomCircleContainer extends StatelessWidget {
//   final LangModel langModel;
//   final double? height;
//   final double? margin;
//   const CustomCircleContainer({
//     super.key,
//     required this.langModel,
//     this.height,
//     this.margin,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(margin!),
//       height: height,
//       // width: 50,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: langModel.color,
//       ),
//       child: Center(
//         child: Text(
//           langModel.langName,
//           style: MyStyle.second16TextStyle,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ajitstafd/features/models/lang_model.dart';
import 'package:ajitstafd/utils/my_styles.dart';

class CustomCircleContainer extends StatelessWidget {
  final LangModel langModel;
  final double? height;
  final double? margin;
  const CustomCircleContainer({
    super.key,
    required this.langModel,
    this.height,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin!),
      height: height,
      width: height, 
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: langModel.color,
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            langModel.langName,
            style: MyStyle.second16TextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
