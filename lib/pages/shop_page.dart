//handle shop page
import 'package:flutter/cupertino.dart';

class ShopPage extends StatefulWidget{
  const ShopPage({super.key});
  @override
  ShopPageState createState()=>ShopPageState();
}
class ShopPageState extends State<ShopPage>{
  @override
  Widget build(BuildContext context){
    return Center(child: Text('Shop more for less'),);
  }
}