//handle home page state
import 'package:flutter/material.dart';
import 'package:e_commerce_app/components/bottom_navbar.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar:BottomNavbar(),
    );
  }
}