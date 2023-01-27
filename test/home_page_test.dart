import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:router_example/pages/home_page.dart';

import 'material_wrapper.dart';

void main() {
  testGoldens(
    'Home page test',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: materialWrapper(const HomePage()),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'home_page');
    },
  );
}
