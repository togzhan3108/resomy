import 'package:flutter/material.dart';
import 'package:resomy_client/modules/core/screens/splash_screen.dart';
import 'package:resomy_client/modules/system/screens/money_result.dart';
import 'package:resomy_client/modules/system/screens/new_screen.dart';
import 'package:resomy_client/modules/system/system_screen.dart';

import 'core/helper/navigatable.dart';
import 'core/routes/routes.dart';
import 'modules/system/screens/money.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.splash,
      routes: routes(),
    );
  }
}

routes() {
  List<Navigatable> screens = generateRoutes();
  Map<String, Widget Function(BuildContext)> routes = {};
  screens.forEach((element) {
    routes[element.getName()] = (context) => element;
  });
  return routes;
}

List<Navigatable> generateRoutes() {
  return [
    SplashScreen(),
    SystemScreen(),
    NewScreen(),
    MoneyScreen(),
    MoneyResult()
  ];
}
