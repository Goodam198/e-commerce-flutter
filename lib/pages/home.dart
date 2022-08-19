import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'my_product.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/providers/product_provider.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [

            ApplicationBar('browse'),

            Expanded(
              child:  ListView.builder(
                itemCount: productProvider.products.length,
                itemBuilder:((context,index)=>Card(
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              productProvider.likeProduct(index);
                            },
                            icon: productProvider.products[index].isLiked? Image.asset('assets/icons/heartitemenabled.png'):Image.asset('assets/icons/heartitem.png'),
                          ),


                          IconButton(
                            onPressed: () {

                              productProvider.addToCart(index);
                            },
                            icon: productProvider.products[index].isCart? Image.asset('assets/icons/favoriteditemenabled.png'):Image.asset('assets/icons/favoriteditem.png'),
                          )

                        ],
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              productProvider.getSelectedProduct(productProvider.products[index]);
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (context) => MyProduct()));
                            },
                            child: Image.asset(
                              'assets/images/${productProvider.products[index].image}',
                              height: 97,
                              width: 327,
                            ),
                          )
                        ],
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Image.asset('assets/icons/flag.png')
                            ),

                            Text(
                              'trending'.toUpperCase(),
                              style: TextStyle(
                                  color: Color(0xffE10000),
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 2
                              ),
                            )
                          ],
                        ),
                      ),


                      Divider(
                        height: 1,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(productProvider.products[index].description,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1
                              ),
                            ),
                            Text('\$${productProvider.products[index].price}',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  letterSpacing: 2
                              ),
                            )
                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: (){},
                                icon: Image.asset('assets/icons/heart.png')
                            ),

                            Text('${productProvider.products[index].numberOfLikes} likes',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  letterSpacing: 2
                              ),
                            ),

                            SizedBox(width: 20),

                            IconButton(
                                onPressed: (){},
                                icon: Image.asset('assets/icons/commenticon.png')
                            ),

                            Text('${productProvider.products[index].numberOfComments} comments',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  letterSpacing: 2
                              ),
                            ),

                          ],
                        ),
                      )
                    ],

                  ),
                )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
