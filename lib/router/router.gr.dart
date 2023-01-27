// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i10;

import '../models/shopping_bag_model.dart' as _i12;
import '../pages/base_page.dart' as _i1;
import '../pages/home_page.dart' as _i6;
import '../pages/login_page.dart' as _i2;
import '../pages/profile_page.dart' as _i7;
import '../pages/settings_page.dart' as _i8;
import '../pages/shopping_bag_page.dart' as _i3;
import 'empty_page.dart' as _i4;
import 'router.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
        fullscreenDialog: true,
      );
    },
    ShoppingBagRoute.name: (routeData) {
      final args = routeData.argsAs<ShoppingBagRouteArgs>();
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.ShoppingBagPage(
          key: args.key,
          item: args.item,
        ),
        transitionsBuilder: _i11.slideFromTopTransition,
        durationInMilliseconds: 400,
        reverseDurationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EmptyRoute.name: (routeData) {
      final args = routeData.argsAs<EmptyRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.EmptyPage(
          key: args.key,
          child: args.child,
        ),
      );
    },
    HomeRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          BaseRoute.name,
          path: '/',
          children: [
            _i9.RouteConfig(
              HomeRouter.name,
              path: 'empty-router-page',
              parent: BaseRoute.name,
              children: [
                _i9.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            _i9.RouteConfig(
              ProfileRouter.name,
              path: 'empty-router-page',
              parent: BaseRoute.name,
              children: [
                _i9.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i9.RouteConfig(
                  SettingsRoute.name,
                  path: 'settings-page',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i9.RouteConfig(
          ShoppingBagRoute.name,
          path: '/shopping-bag-page',
        ),
        _i9.RouteConfig(
          EmptyRoute.name,
          path: '/empty-page',
        ),
      ];
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i9.PageRouteInfo<void> {
  const BaseRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BaseRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ShoppingBagPage]
class ShoppingBagRoute extends _i9.PageRouteInfo<ShoppingBagRouteArgs> {
  ShoppingBagRoute({
    _i10.Key? key,
    required _i12.ShoppingBagModel item,
  }) : super(
          ShoppingBagRoute.name,
          path: '/shopping-bag-page',
          args: ShoppingBagRouteArgs(
            key: key,
            item: item,
          ),
        );

  static const String name = 'ShoppingBagRoute';
}

class ShoppingBagRouteArgs {
  const ShoppingBagRouteArgs({
    this.key,
    required this.item,
  });

  final _i10.Key? key;

  final _i12.ShoppingBagModel item;

  @override
  String toString() {
    return 'ShoppingBagRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i4.EmptyPage]
class EmptyRoute extends _i9.PageRouteInfo<EmptyRouteArgs> {
  EmptyRoute({
    _i10.Key? key,
    required _i10.Widget child,
  }) : super(
          EmptyRoute.name,
          path: '/empty-page',
          args: EmptyRouteArgs(
            key: key,
            child: child,
          ),
        );

  static const String name = 'EmptyRoute';
}

class EmptyRouteArgs {
  const EmptyRouteArgs({
    this.key,
    required this.child,
  });

  final _i10.Key? key;

  final _i10.Widget child;

  @override
  String toString() {
    return 'EmptyRouteArgs{key: $key, child: $child}';
  }
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i9.PageRouteInfo<void> {
  const HomeRouter({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ProfileRouter extends _i9.PageRouteInfo<void> {
  const ProfileRouter({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.SettingsPage]
class SettingsRoute extends _i9.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings-page',
        );

  static const String name = 'SettingsRoute';
}
