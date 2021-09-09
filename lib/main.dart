import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';
/*import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:learning_routes/features_flutter_modular/app_module.dart';
import 'package:learning_routes/features_getx/home/home_getx.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: MyApp(),
    ),
  );
}*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _appRouter = RouterApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );
    /*return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
    ).modular();*/
    /*return GetMaterialApp(
      theme: ThemeData.dark(),
      home: HomeGetX(),
    );*/
  }
}
