// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/product_item.dart';

class FoodHomeScreen extends StatefulWidget {
  const FoodHomeScreen({super.key});

  @override
  State<FoodHomeScreen> createState() => _FoodHomeScreenState();
}

class _FoodHomeScreenState extends State<FoodHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Özen ile hazirlanmiş lezziz yemekler sizlerle.',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                // fontFamily:
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // Search Area
          MyInputBox(),

          // Categories
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem(
                  categoryTitle: 'Hamburger',
                  isSelected: true,
                ),
                CategoryItem(
                  categoryTitle: 'Pizza',
                ),
                CategoryItem(
                  categoryTitle: 'Sushi',
                ),
                CategoryItem(
                  categoryTitle: 'Salata',
                ),
                CategoryItem(
                  categoryTitle: 'Tatli',
                ),
              ],
            ),
          ),

          // Products
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ProductItem(
                  productName: "Hamburger",
                  productImage: "assets/images/hamburger-1.jpg",
                  productPrice: "8.00",
                  productDescription:
                      "%100 dana kiyma, cheddar peyniri ve ev yapimi ekmeğiyle.",
                ),
                ProductItem(
                  productName: "Pizza",
                  productImage: "assets/images/pizza.jpg",
                  productPrice: "10.00",
                  productDescription:
                      "Özel Kayseri sucuğu, zeytin, mantar ve biberiyle. ",
                ),
                ProductItem(
                  productName: "Sushi",
                  productImage: "assets/images/sushi.png",
                  productPrice: "12.00",
                  productDescription: "Gizli tarifi ile enfes sushi.",
                ),
                ProductItem(
                  productName: "Salata",
                  productImage: "assets/images/salata.png",
                  productPrice: "2.00",
                  productDescription: "Kolestrol dostu çoban salatasi.",
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket),
          label: '',
        ),
      ]),
    );
  }
}

class MyInputBox extends StatelessWidget {
  const MyInputBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: "Aradğiniz lezzet için..",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
