import 'package:flutter/material.dart';
import '../model/category.dart';
import 'question.dart';

final categories = <Category>[
  Category(
    questions: questions,
    categoryName: 'Physics',
    imageUrl: 'assets/physics.png',
    backgroundColor: Colors.blue,
    description: 'Practice questions from various chapters in physics',
  ),
  Category(
    questions: questions,
    imageUrl: 'assets/chemistry.png',
    categoryName: 'Chemistry',
    backgroundColor: Colors.orange,
    description: 'Practice questions from various chapters in chemistry',
  ),
  Category(
    questions: questions,
    imageUrl: 'assets/maths.png',
    categoryName: 'Maths',
    backgroundColor: Colors.purple,
    description: 'Practice questions from various chapters in maths',
  ),
  Category(
    questions: questions,
    imageUrl: 'assets/biology.png',
    categoryName: 'Biology',
    backgroundColor: Colors.lightBlue,
    description: 'Practice questions from various chapters in biology',
  ),
];
