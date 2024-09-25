import 'package:flutter/material.dart';
import 'package:sneakershop/components/bottom_nav_bar.dart';
import 'package:sneakershop/pages/cart_page.dart';
import 'package:sneakershop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variable to hold the current selected tab
  int selectedTab = 0;
  //navigate to the selected tab
  void navigateBottomBar(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  //pages to display
  final List<Widget> pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
