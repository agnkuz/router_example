import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:router_example/router/router.gr.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go to Settings'),
              onPressed: () {
                context.router.push(const SettingsRoute());
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Home'),
              onPressed: () {
                context.navigateTo(const HomeRouter());
              },
            ),
          ],
        ),
      ),
    );
  }
}
