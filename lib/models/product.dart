import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "body building",
    image: "assets/images/1.png",
    color: Color.fromARGB(255, 162, 176, 190),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "diet system",
    image: "assets/images/2.jpg",
    color: Colors.blueGrey,
    courses: 22,
  ),
  Product(
    id: 3,
    title: "food system",
    image: "assets/images/3.jpg",
    color: Color.fromARGB(255, 163, 168, 166),
    courses: 15,
  ),
  Product(
    id: 3,
    title: "cretae my schedule",
    image: "assets/images/4.jpg",
    color: Color.fromARGB(255, 163, 168, 166),
    courses: 15,
  ),
];
