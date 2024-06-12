import 'package:ajitstafd/features/screens/sources_screen.dart';
import 'package:ajitstafd/features/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../features/screens/home_screen.dart';

// String initialRoute = SplashScreen.routeName;
String initialRoute = SplashScreen.routeName;

class RoutGenerator {
  static Route<dynamic> generateRout(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SourcesScreen.routeName:
        return MaterialPageRoute(builder: (_) => SourcesScreen());
      // case LoginPage.routeName:
      //   return MaterialPageRoute(builder: (_) => LoginPage());
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      // case SettingScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => SettingScreen());
      // case MoreScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => MoreScreen());
      // case EditProfileScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => EditProfileScreen(UserModel()));
      // case AppStartScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => AppStartScreen());
      // case "homeslide":
      //   return SlideRightRoute(BottomTabBarr(
      //     widgetoutside: DashBoardScreen(),
      //   ));
      // case "Alarm_screen":
      //   return SlideRightRoute(BottomTabBarr(
      //     widgetoutside: AlarmScreen(),
      //   ));
////
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ErrorRoute'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute(this.widget)
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return new SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
