//handle shop page
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/shoe_tile.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});
  @override
  ShopPageState createState()=>ShopPageState();
}
class ShopPageState extends State<ShopPage>{
  @override
  Widget build(BuildContext context){
    return Column(children: [
      //search bar
      Container(
        padding: EdgeInsets.all( 20),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Search',style: TextStyle(color: Colors.grey),),
            Icon(Icons.search,color: Colors.grey),


          ],
        ),
      ),
      Padding(padding:EdgeInsets.symmetric(vertical: 12),
      child: Text('Everyone flies..some fly longer than others'),),
      //hot picks
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        Text('Hot picks 🔥',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        Text('See all',style: TextStyle(color: Colors.blue,fontSize: 24),)
      ],),),
      SizedBox(height: 20,),
      Expanded(child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:20,
          itemBuilder: (context,index){
            Shoe shoe=Shoe(
                name: 'Elegant sneaker',
                price: '200',
                imagePath:'lib/images/p3.jpg',
                description: 'High quality shoe');
            return ShoeTile(shoe:shoe);

      }))

    ],);
  }
}