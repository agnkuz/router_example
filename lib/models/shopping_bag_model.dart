// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

class ShoppingBagModel extends Equatable {
  const ShoppingBagModel({
    required this.itemId,
    required this.itemName,
  });

  final String itemId;
  final String itemName;

  @override
  List<Object?> get props => [itemId, itemName];
}
