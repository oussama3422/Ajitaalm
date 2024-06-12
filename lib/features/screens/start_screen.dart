import 'package:ajitstafd/features/screens/sources_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/data.dart';
import '../widgets/card_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, idx) => InkWell(
          onTap: () {
            if (idx == 3) {
              debugPrint("$idx");
              Navigator.pushNamed(context, SourcesScreen.routeName);
            }
          },
          child: CardWidget(
            cardModel: data[idx],
          ),
        ),
        itemCount: data.length,
      ),
    );
  }
}
