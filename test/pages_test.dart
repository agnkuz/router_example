import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:router_example/models/shopping_bag_model.dart';
import 'package:router_example/pages/home_page.dart';
import 'package:router_example/pages/login_page.dart';
import 'package:router_example/pages/profile_page.dart';
import 'package:router_example/pages/settings_page.dart';
import 'package:router_example/pages/shopping_bag_page.dart';

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

  testGoldens(
    'Profile page test',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: materialWrapper(const ProfilePage()),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'profile_page');
    },
  );

  testGoldens(
    'Settings page test',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: materialWrapper(const SettingsPage()),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'settings_page');
    },
  );

  testGoldens(
    'Login page test',
    (tester) async {
      final builder = DeviceBuilder()
        ..addScenario(
          widget: materialWrapper(const LoginPage()),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'login_page');
    },
  );

  testGoldens(
    'Shopping bag page test',
    (tester) async {
      const mockedItem = ShoppingBagModel(itemId: '0', itemName: 'name');
      
      final builder = DeviceBuilder()
        ..addScenario(
          widget: materialWrapper(const ShoppingBagPage(item: mockedItem)),
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'shopping_bag_page');
    },
  );
}
