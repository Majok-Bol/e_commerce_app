//handle shop page
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/shoe_tile.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  ShopPageState createState() => ShopPageState();
}

class ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);
    //alert the user
    //shoe added successfulyy
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('✅Successfully added'),
            content: Text('Check your cart'),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //consume data in the cart
    return Consumer<Cart>(
      builder:
          (context, value, child) => Column(
            children: [
              //search bar
              Container(
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search', style: TextStyle(color: Colors.grey)),
                    Icon(Icons.search, color: Colors.grey),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Text('Everyone flies..some fly longer than others'),
              ),
              //hot picks
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hot picks 🔥',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.blue, fontSize: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    // Shoe shoe=Shoe(
                    //     name: 'Elegant sneaker',
                    //     price: '200',
                    //     imagePath:'lib/images/p3.jpg',
                    //     description: 'High quality shoe');
                    //get shoe list using its index
                    Shoe shoe = value.getShoeList()[index];
                    return ShoeTile(
                      shoe: shoe,
                      onTap: () => addShoeToCart(shoe),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 1, left: 1, right: 1),
                child: Divider(color: Colors.white),
              ),
            ],
          ),
    );
  }
}
