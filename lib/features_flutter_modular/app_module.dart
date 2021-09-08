import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_routes/features_flutter_modular/home/home_module.dart';

class AppModule extends Module {
  //lista de dependencias para injetar
  @override
  final List<Bind> binds = [];

  //lista de rotas do meu modulo
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
