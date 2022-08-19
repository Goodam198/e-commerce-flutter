import 'dart:async';
import 'package:flutter/material.dart';
import 'package:e_commerce/pages/navigation_page.dart';

class Loader extends StatefulWidget {

  @override
  State<Loader> createState() => _LoaderState();

}

class _LoaderState extends State<Loader> {


  void checkTimer(){
    Timer(Duration(seconds: 4),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  NavigationPage()));
    });
  }

  @override
  void initState() {

    super.initState();
    checkTimer();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff000000),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/loader_cart.png',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
