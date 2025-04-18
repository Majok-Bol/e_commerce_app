//handle cart
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class Cart extends ChangeNotifier {
  //get list of shoes for sale

List<Shoe>shoeShop=[
  Shoe(name:'J15',
      price:'300',
      imagePath: 'lib/images/p3.jpg',
      description: 'Shipped from Nevada,USA'),
  Shoe(name:'Airmax',
      price:'400',
      imagePath: 'lib/images/p8.jpg',
      description: 'Shipped from Dubai'),
  Shoe(name:'J11',
      price:'500',
      imagePath: 'lib/images/p7.jpg',
      description: 'Shipped from Romania'),
  Shoe(name:'J12',
      price:'600',
      imagePath: 'lib/images/p6.jpg',
      description: 'Shipped from Moscow'),
];
//items in user cart
List<Shoe>userCart=[];
//get list of shoes for sale

List<Shoe>getShoeList(){
  return shoeShop;
}
//get items in the user cart
List<Shoe>getUserCart(){
  return userCart;
}
//add items to cart
void addToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();

}
//remove items from cart
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();

}
}


