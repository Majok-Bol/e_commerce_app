//handle bottom navigation bar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget{
  const BottomNavbar({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      child: GNav(tabs:[
        GButton(icon:Icons.home,text: 'Shop',),
        GButton(icon:Icons.shopping_bag_rounded,text: 'Cart',),
        GButton(icon:Icons.delete,text: 'Delete',),

      ]),

    );
  }
}