import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_routes/features_getx/infos/infos_getx.dart';

class HomeGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOMEPAGE')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('HOMEPAGE', textAlign: TextAlign.center),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Get.to(
                  InfosGetX(
                    info: 'PAGINA DE INFORMACOES',
                  ),
                ),
                child: Text('INFORMACOES'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
