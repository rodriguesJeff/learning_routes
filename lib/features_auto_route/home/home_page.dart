import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_routes/features_auto_route/router/material_auto_router.gr.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.router.pushNamed('/infos');
                },
                child: Text('SEM PARAMETROS'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.router.push(ProfileRoute(userName: 'Jefferson'));
                },
                child: Text('COM PARAMETROS'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.router.pushNamed('/dashboard');
                },
                child: Text('DASHBOARD TABS'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
