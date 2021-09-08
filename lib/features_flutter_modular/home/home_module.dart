import 'package:flutter_modular/flutter_modular.dart';
import 'package:learning_routes/features_flutter_modular/home/home_screen.dart';
import 'package:learning_routes/features_flutter_modular/infos/infos_screen.dart';
import 'package:learning_routes/features_flutter_modular/profile/profile_screen.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomeScreen()),
    ChildRoute(
      '/infos',
      child: (_, args) => InfosScreen(name: args.data),
    ),
    ChildRoute(
      '/profile',
      child: (_, args) => ProfileScreen(user: args.data),
    ),
  ];
}
