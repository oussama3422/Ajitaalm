import 'package:ajitstafd/app_config.dart';
import 'package:ajitstafd/features/screens/code_editor.dart';
import 'package:flutter/material.dart';

import '../../utils/my_styles.dart';
import '../widgets/card_widget.dart';
import 'learn_screen.dart';
import 'start_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    ); // Adjust the length according to the number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/Ajitaalm.png',
          height: 50,
          width: 50,
        ),
        // title: Text(
        //   AppConfig.appName,
        //   style: MyStyle.second20TextStyle,
        // ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'مسارات'),
            Tab(text: 'كود'),
            Tab(text: 'تعلم'),
            Tab(text: 'مقدمة'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          StartScreen(),
          CodeEditorScreen(),
          LearnScreen(),
          StartScreen(),
        ],
      ),
    );
  }
}
