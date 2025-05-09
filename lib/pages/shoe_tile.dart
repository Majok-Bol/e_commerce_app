import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  //create shoe instance
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6),

      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          //description
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Text(shoe.description, style: TextStyle(color: Colors.grey)),
          ),

          Padding(
            padding: EdgeInsets.only(left: 1),
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
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 1),
                    Text('\$' + shoe.price),
                  ],
                ),
              ],
            ),
          ),
          //price
          //button to add to cart
          GestureDetector(
            onTap: onTap,

            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.black,
              ),

              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
