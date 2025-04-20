//handle home page
import 'package:flutter/material.dart';
import 'package:e_commerce_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('E-Commerce app'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset('lib/images/logo.jpg', height: 240),
              SizedBox(height: 20),
              //title
              const Text(
                'Just do it',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              const Text(
                'Brand new sneakers and custom kicks  made with premium quality',
                style: TextStyle(fontSize: 25, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              //subtitle

              //button
              //wrap container in gesture detector
              //ie navigate to new page
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),

                    color: Colors.grey[900],
                  ),
                  child: Center(
                    child: Text(
                      'Shop now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
