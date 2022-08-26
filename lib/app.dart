import 'package:flutter/material.dart';
import 'package:e_commerce/pages/Loader.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-commerce App",
      theme: ThemeData(
        primarySwatch: Colors.grey,
    ),

      home: Loader(),

    );
  }
}