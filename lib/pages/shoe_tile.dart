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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          //description
          Text(shoe.description,style: TextStyle(color: Colors.grey),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(shoe.name),
            Text(shoe.price),
          ],),
          //price
          //button to add to cart
          Container(
            padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight:Radius.circular(12)),
                color: Colors.black
              ),

              child: Icon(Icons.add,color: Colors.white,)),
        ],

      ),
    );
  }
}