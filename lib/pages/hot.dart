import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/providers/product_provider.dart';
import 'app_bar.dart';

class Hot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);


    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ApplicationBar('hot'),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 1,
                  children: [

                    Container(
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      color: Colors.brown,
                    ),
                    Container(
                      height: 200,
                      color: Colors.indigo,
                    ),
                    Container(
                      height: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 200,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 200,
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 200,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 200,
                      color: Colors.cyan,
                    ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                    )

                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
