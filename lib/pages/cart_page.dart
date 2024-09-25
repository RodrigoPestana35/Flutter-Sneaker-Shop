import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/components/cart_item.dart';
import 'package:sneakershop/models/cart.dart';
import 'package:sneakershop/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // heading
            Text(
              "My Cart",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getCart().length,
                itemBuilder: (context, index) {
                  //get individual shoe
                  Shoe individualShoe = value.getCart()[index];

                  //return the car item
                  return CartItem(
                    shoe: individualShoe,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
