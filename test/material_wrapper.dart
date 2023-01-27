import 'package:flutter/material.dart';
import 'package:router_example/router/dependencies.dart';
import 'package:router_example/router/router.gr.dart';
import 'package:router_example/theme.dart';

MaterialApp materialWrapper(Widget page) {
  final AppRouter router = sl.get<AppRouter>();

  router.push(EmptyRoute(child: page));

  return MaterialApp.router(
    routerDelegate: router.delegate(),
    routeInformationParser: router.defaultRouteParser(),
    debugShowCheckedModeBanner: false,
    theme: getTheme(),
    darkTheme: getDarkTheme(),
  );
}
