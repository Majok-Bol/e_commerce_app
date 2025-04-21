//handle cart items
import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});
  @override
  // CartItemState createState() => CartItemState();
  State<CartItem> createState() => CartItemState();
}

class CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
    );
  }
}
