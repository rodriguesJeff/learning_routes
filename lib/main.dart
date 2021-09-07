import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = RouterApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
    );
  }
}
