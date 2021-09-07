// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../dashboard/dashboard_page.dart' as _i6;
import '../dashboard/pages/books_page.dart' as _i7;
import '../dashboard/tabs/books_tab.dart' as _i8;
import '../dashboard/tabs/languages_tab.dart' as _i9;
import '../home/home_page.dart' as _i3;
import '../infos/infos_page.dart' as _i4;
import '../profile/profile_page.dart' as _i5;

class RouterApp extends _i1.RootStackRouter {
  RouterApp([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    InfosRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.InfosPage();
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ProfileRouteArgs>();
          return _i5.ProfilePage(userName: args.userName);
        }),
    DashBoardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.DashBoardPage();
        }),
    BooksRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<BooksRouteArgs>(
              orElse: () => BooksRouteArgs(bookId: pathParams.optString('id')));
          return _i7.BooksPage(bookId: args.bookId);
        }),
    BooksTabRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.BooksTabPage();
        }),
    LanguagesTabRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.LanguagesTabPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(InfosRoute.name, path: '/infos-page'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i1.RouteConfig(DashBoardRoute.name,
            path: '/dash-board-page',
            children: [
              _i1.RouteConfig(BooksTabRoute.name, path: 'books-tab-page'),
              _i1.RouteConfig(LanguagesTabRoute.name,
                  path: 'languages-tab-page')
            ]),
        _i1.RouteConfig(BooksRoute.name, path: '/books/:id')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class InfosRoute extends _i1.PageRouteInfo {
  const InfosRoute() : super(name, path: '/infos-page');

  static const String name = 'InfosRoute';
}

class ProfileRoute extends _i1.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({required String? userName})
      : super(name,
            path: '/profile-page', args: ProfileRouteArgs(userName: userName));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({required this.userName});

  final String? userName;
}

class DashBoardRoute extends _i1.PageRouteInfo {
  const DashBoardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/dash-board-page', initialChildren: children);

  static const String name = 'DashBoardRoute';
}

class BooksRoute extends _i1.PageRouteInfo<BooksRouteArgs> {
  BooksRoute({String? bookId})
      : super(name,
            path: '/books/:id',
            args: BooksRouteArgs(bookId: bookId),
            rawPathParams: {'id': bookId});

  static const String name = 'BooksRoute';
}

class BooksRouteArgs {
  const BooksRouteArgs({this.bookId});

  final String? bookId;
}

class BooksTabRoute extends _i1.PageRouteInfo {
  const BooksTabRoute() : super(name, path: 'books-tab-page');

  static const String name = 'BooksTabRoute';
}

class LanguagesTabRoute extends _i1.PageRouteInfo {
  const LanguagesTabRoute() : super(name, path: 'languages-tab-page');

  static const String name = 'LanguagesTabRoute';
}
