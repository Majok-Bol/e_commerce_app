//handle home page state
import 'package:flutter/material.dart';
import 'package:e_commerce_app/components/bottom_navbar.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State<HomePage>{
  //index to keep track of the selected index
  int selectedIndex=0;
  //method to update selected index
  void navigateBottomBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  //pages to display
  final List<Widget>_pages=[
    //shop page
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        bottomNavigationBar:BottomNavbar(onTabChanged:(index)=>navigateBottomBar(index)),
      appBar:AppBar(
        leading: Builder(builder: (context)=>IconButton(onPressed:() {
          Scaffold.of(context).openDrawer();

        }, icon:Icon(Icons.menu,color: Colors.black,)),
      ),


    ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(

            children: [
          //logo
          DrawerHeader(
              child:Image.asset('lib/images/p13.jpeg')),
          Padding(padding:EdgeInsets.symmetric(horizontal: 10),
            child: Divider(color: Colors.white,),
        ),
          Padding(padding: EdgeInsets.only(left: 13,bottom: 25),
              child: ListTile(
            leading: Icon(Icons.home,color: Colors.white,),
            title: Text('Home',style: TextStyle(color: Colors.white),),
          )),
          Padding(padding: EdgeInsets.only(left: 13,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.info,color: Colors.white,),
                title: Text('About',style: TextStyle(color: Colors.white),),
              )),
          Padding(padding: EdgeInsets.only(left: 13,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout_outlined,color: Colors.white,),
                title: Text('Logout',style: TextStyle(color: Colors.white),),
              )),
          //other pages
        ],),

      ],
        ),
      ),
      body:_pages[selectedIndex],);
  }
}