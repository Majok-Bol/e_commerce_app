//handle cart items
import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});
  @override
  // CartItemState createState() => CartItemState();
  State<CartItem> createState() => CartItemState();
}

class CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.greenAccent,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 10),
        child: ListTile(
      leading: Image.asset(widget.shoe.imagePath),
      title: Text(widget.shoe.name),
      subtitle: Text(widget.shoe.price),
          trailing: IconButton(onPressed:removeItemFromCart, icon:Icon(Icons.delete)),
    ));
  }
}
