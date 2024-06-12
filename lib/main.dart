import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './utils/route_generator.dart' as router;

import 'app_config.dart';
import 'features/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: AppConfig.debugMode,
          title:AppConfig.appName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          // home:  HomeScreen(),
          onGenerateRoute: router.RoutGenerator.generateRout,
          initialRoute: router.initialRoute,
        );
      },
    );
  }
}
