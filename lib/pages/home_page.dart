//handle home page
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(title: Text('Sneakers app'),centerTitle: true,backgroundColor: Colors.blue,),
      body: Center(child:Column(children: [
        //logo
       Image.asset('lib/images/logo.jpg',height: 240),
        SizedBox(height: 20,),
        Text('Just do it'),
        //title
        //subtitle

        //button
      ],),
      ),
    );
  }
}