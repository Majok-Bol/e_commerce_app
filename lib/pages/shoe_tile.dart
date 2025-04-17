import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/shoe.dart';
class ShoeTile extends StatelessWidget{
  //create shoe instance
  Shoe shoe;
  ShoeTile({super.key,required this.shoe});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(left: 23),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          //description
          //price
          //button to add to cart
        ],
      ),
    );
  }
}