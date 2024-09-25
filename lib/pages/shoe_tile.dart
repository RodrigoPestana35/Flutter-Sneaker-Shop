import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.image),
          ),
          //description
          Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),

          //price
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${shoe.price}€',
                      style: TextStyle(
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),

                //plus button
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )

          //add to cart button
        ],
      ),
    );
  }
}
