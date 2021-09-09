import 'package:auto_route/auto_route.dart';
import 'package:learning_routes/features_auto_route/dashboard/dashboard_page.dart';
import 'package:learning_routes/features_auto_route/dashboard/pages/books_page.dart';
import 'package:learning_routes/features_auto_route/dashboard/tabs/books_tab.dart';
import 'package:learning_routes/features_auto_route/dashboard/tabs/languages_tab.dart';
import 'package:learning_routes/features_auto_route/home/home_page.dart';
import 'package:learning_routes/features_auto_route/infos/infos_page.dart';
import 'package:learning_routes/features_auto_route/profile/profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomePage, initial: true),
    AutoRoute(path: '/infos', page: InfosPage),
    AutoRoute(path: '/profile', page: ProfilePage),
    AutoRoute(
      path: '/dashboard',
      page: DashBoardPage,
      children: [
        AutoRoute(path: 'books', page: BooksTabPage),
        AutoRoute(path: 'languages', page: LanguagesTabPage),
      ],
    ),
    AutoRoute(path: '/dashboard/books/book/:id', page: BooksPage),
  ],
)
class $RouterApp {}
