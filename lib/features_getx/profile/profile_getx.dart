import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_routes/features_getx/home/home_getx.dart';
import 'package:learning_routes/models/user_model.dart';

class ProfileGetX extends StatelessWidget {
  const ProfileGetX({this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user!.name!),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                user!.name!,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                user!.idade!.toString(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                user!.tel!,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Get.offAll(HomeGetX()),
                child: Text('SAIR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
