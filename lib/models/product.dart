import 'package:flutter/material.dart';
 class Product{
  late final String image, title;
  late final int id, games;
  late final Color color;
  Product({
    required this.image,
    required this.title,
    required this.games,
    required this.color,
    required this.id
  });
 }
 List<Product> products =[
  Product(
    id:1,
    title: "Fun with Numbers",
    image: "assets/addandsub.png",
    color: Color(0xFFff6374),
    games: 2,
  ),
  Product(
    id:2,
    title: "English",
    image: "assets/english.jpeg",
    color: Color(0xff71b8ff),
    games: 2,
  ),
  Product(
    id:3,
    title: "Count it out",
    image: "assets/countit.jpeg",
    color: Color(0xFFffaa5b ),
    games: 1,
  ),
  // Product(
  //   id:4,
  //   title: "Count it out",
  //   image: "assets/countit.jpeg",
  //   color: Color(0xFF9ba0fc),
  //   games: 1,
  // ),
 ];
 