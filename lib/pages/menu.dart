import 'package:flutter/material.dart';
import 'package:untitled2/services/product.dart';
import 'package:untitled2/services/menuCard.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Coke float", price: 69.99),
    Product(productName: "Burger Patty", price: 45.00),
    Product(productName: "Fries", price: 49.99),
    Product(productName: "Chicken joy", price: 57.99),
    Product(productName: "Sundae", price: 55.99),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[500],
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
     body: Padding(
       padding: EdgeInsets.all(5.0),
       child: Column(
         children: products.map((products) =>Menucard(product: products)).toList(),
     ),
      ),
    );
  }
}
