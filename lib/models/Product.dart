import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Atlantic Hinges",
      price: 255,
      size: 12,
      description: dummyText,
      image: "lib/images/hinges.jpg",
      color: Colors.white),
  Product(
      id: 2,
      title: "Atlantic Hinges",
      price: 299,
      size: 8,
      description: dummyText,
      image: "lib/images/hinges.jpg",
      color: Colors.white),
  Product(
      id: 3,
      title: "Atlantic Hinges",
      price: 67,
      size: 10,
      description: dummyText,
      image: "lib/images/hinges.jpg",
      color: Colors.white),
  Product(
      id: 4,
      title: "Atlantic Hinges",
      price: 89,
      size: 11,
      description: dummyText,
      image: "lib/images/hinges.jpg",
      color: Colors.white),
  Product(
      id: 5,
      title: "Atlantic Hinges",
      price: 199,
      size: 12,
      description: dummyText,
      image: "lib/images/hinges.jpg",
      color: Colors.white),
  Product(
    id: 6,
    title: "Atlantic Hinges",
    price: 234,
    size: 12,
    description: dummyText,
    image: "lib/images/hinges.jpg",
    color: Colors.white,
  ),
  Product(
    id: 7,
    title: "Atlantic Hinges",
    price: 159,
    size: 12,
    description: dummyText,
    image: "lib/images/hinges.jpg",
    color: Colors.white,
  ),
  Product(
    id: 8,
    title: "Atlantic Hinges",
    price: 39,
    size: 12,
    description: dummyText,
    image: "lib/images/hinges.jpg",
    color: Colors.white,
  ),
  Product(
    id: 9,
    title: "Atlantic Hinges",
    price: 79,
    size: 12,
    description: dummyText,
    image: "lib/images/hinges.jpg",
    color: Colors.white,
  ),
  Product(
    id: 10,
    title: "Atlantic Hinges",
    price: 55,
    size: 12,
    description: dummyText,
    image: "lib/images/hinges.jpg",
    color: Colors.white,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
