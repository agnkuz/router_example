import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:router_example/pages/base_page.dart';
import 'package:router_example/pages/home_page.dart';
import 'package:router_example/pages/login_page.dart';
import 'package:router_example/pages/profile_page.dart';
import 'package:router_example/pages/settings_page.dart';
import 'package:router_example/pages/shopping_bag_page.dart';
import 'package:router_example/router/empty_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: BasePage,
      children: [
        AutoRoute(
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomePage),
          ],
        ),
        AutoRoute(
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfilePage),
            AutoRoute(page: SettingsPage),
          ],
        ),
      ],
    ),
    AutoRoute(page: LoginPage, fullscreenDialog: true),
    CustomRoute(
      page: ShoppingBagPage,
      transitionsBuilder: slideFromTopTransition,
      durationInMilliseconds: 400,
      reverseDurationInMilliseconds: 300,
    ),

    /// for tests
    AutoRoute(page: EmptyPage),
  ],
)
class $AppRouter {}

Widget slideFromTopTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, -1.0);
  const end = Offset.zero;

  final tween =
      Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
