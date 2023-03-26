import 'package:flutter/material.dart';
import 'package:atlantic_v2/models/Product.dart';
import 'package:atlantic_v2/constants.dart';

class Description extends StatelessWidget {
  const Description({
    required this.product,
  }) : super(key: null);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}