import 'dart:async';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:router_example/router/dependencies.dart';
import 'package:router_example/router/router.gr.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await loadAppFonts();
  return GoldenToolkit.runWithConfiguration(
    () async {
      sl.registerSingleton<AppRouter>(AppRouter());
      await testMain();
    },
    config: GoldenToolkitConfiguration(defaultDevices: const [Device.iphone11]),
  );
}
