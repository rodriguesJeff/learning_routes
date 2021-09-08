import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_routes/features_getx/profile/profile_getx.dart';
import 'package:learning_routes/models/user_model.dart';

class InfosGetX extends StatelessWidget {
  const InfosGetX({this.info});

  final String? info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INFORMACOES'),
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
                info!,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Get.to(ProfileGetX(
                  user: User(name: 'Jefferson', idade: 21, tel: '4002-8922'),
                )),
                child: Text('PERFIL'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
