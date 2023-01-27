import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:router_example/models/shopping_bag_model.dart';
import 'package:router_example/router/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              context.router.push(ShoppingBagRoute(
                item: const ShoppingBagModel(itemId: '1', itemName: 'T-shirt'),
              ));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go to Login'),
              onPressed: () {
                context.router.push(const LoginRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
