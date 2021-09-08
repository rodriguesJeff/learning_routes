import 'package:flutter/material.dart';
//import 'package:auto_route/auto_route.dart';
//import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_routes/features_flutter_modular/app_module.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  //final _appRouter = RouterApp();
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );*/
    return MaterialApp(
      initialRoute: '/',
    ).modular();
  }
}
