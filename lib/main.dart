import 'package:e_commerce/providers/app_bar_provider.dart';
import 'package:e_commerce/providers/product_provider.dart';
import 'package:e_commerce/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => AppBarProvider())
        
      ],
  child: MyApp()
  ));

}
