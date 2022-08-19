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
                  children: productProvider.products.map((hot) => Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 360,
                          child: Image.asset(
                            "assets/images/${hot.image}",
                            width: 350,
                            height:400,
                          ).blurred(
                              colorOpacity: 0.0,
                              blur: 15.0,
                              overlay: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                                child: Column(
                                    children: [
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            IconButton(
                                              onPressed: (){},
                                              icon: Image.asset(
                                                "assets/icons/backwardtick.png",
                                                color: Colors.black,
                                              ),
                                            ),


                                            Image.asset(
                                              "assets/images/${hot.image}",
                                              width: 150,
                                              height: 100,
                                            ),

                                            IconButton(
                                              onPressed: (){},
                                              icon: Image.asset(
                                                "assets/icons/forwardtick.png",
                                                color: Colors.black,
                                              ),
                                            ),

                                          ]
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                        child: Text(
                                          "${hot.name}",
                                          style:
                                          TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins'
                                          ),
                                        ),
                                      )

                                    ]),
                              )),
                        ),
                      ],
                    ),
                  )).toList()
                ),
              )
            ],
          ),
        )
    );
  }
}
