//handle bottom navigation bar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget{
  //handle ontap
  void Function(int)?onTabChanged;
   BottomNavbar({super.key,required this.onTabChanged});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value)=>onTabChanged!(value),
        color: Colors.grey[600],
          tabBorderRadius: 10,
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade100,
          tabActiveBorder:Border.all(color: Colors.white),
          tabs:[
        GButton(icon:Icons.home,text: 'Shop',),
        GButton(icon:Icons.shopping_bag_rounded,text: 'Cart',),

      ]),

    );
  }
}