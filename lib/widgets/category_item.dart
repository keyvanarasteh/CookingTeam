// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryTitle;
  final bool isSelected;

  const CategoryItem({
    Key? key,
    required this.categoryTitle,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          Text(
            categoryTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.red : Colors.black,
            ),
          ),
          isSelected
              ? Icon(
                  Icons.arrow_drop_up,
                  size: 20,
                  color: Colors.red,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
