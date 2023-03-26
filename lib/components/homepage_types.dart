import 'package:flutter/material.dart';

class HomePageTypes extends StatelessWidget {
  final String hardwareType;
  final bool isSelected;
  final VoidCallback onTap;

  HomePageTypes({
    required this.hardwareType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          hardwareType,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          )
        ),
      ),
    );
  }
}
