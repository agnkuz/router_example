import 'package:flutter/material.dart';
import 'package:router_example/models/shopping_bag_model.dart';

class ShoppingBagPage extends StatelessWidget {
  const ShoppingBagPage({super.key, required this.item});

  final ShoppingBagModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping bag'),
      ),
      body: const Center(
        child: Icon(
          Icons.shopping_bag,
          size: 150,
        ),
      ),
    );
  }
}
