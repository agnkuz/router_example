import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: const [
            SizedBox(height: 32),
            TextField(decoration: InputDecoration(hintText: 'Email'),),
            SizedBox(height: 32),
            TextField(decoration: InputDecoration(hintText: 'Password'),),
          ],
        ),
      )),
    );
  }
}
