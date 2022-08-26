import 'package:flutter/material.dart';
import 'package:e_commerce/providers/product_provider.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff242424),
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Image.asset('assets/icons/paymentconfirmed.png')
          )
        ],
      ),

      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productProvider.cart.length,
              itemBuilder: ((context,index) => Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Color(0xffF4F4F4),
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: productProvider.cart[index].product.color,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 5,
                                    )
                                ),
                              )
                            ],
                          ),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/${productProvider.cart[index].product.image}',
                              width: 180,
                              height: 128,
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            indent: 15,
                            endIndent: 15,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                productProvider.cart[index].product.name,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff242424),
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2
                                ),
                              ),
                            )
                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              productProvider.cart[index].product.colorName,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Color(0xff777775),
                              ),
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                '\$${productProvider.cart[index].product.price}',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  color: Color(0xff777775),
                                ),
                              ),
                            )
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: GestureDetector(
                                      onTap: (){
                                        productProvider.reduceProduct(index);
                                      },
                                      child: Image.asset('assets/icons/minusbutton.png')
                                  )
                              ),

                              Expanded(
                                flex: 6,
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffD3D9E2),
                                        width: 1,
                                      )
                                  ),
                                  child: Center(
                                    child: Text(
                                      productProvider.cart[index].productCount.toString(),
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(
                                  flex: 2,
                                  child: GestureDetector(
                                      onTap: (){
                                        productProvider.addProduct(index);
                                      },
                                      child: Image.asset('assets/icons/addbutton.png')
                                  )
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              )
              ),
            ),
          ),


          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 1,
              children: [
                Column(
                  children: [
                    Container(

                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                          child: Card(
                            color: Color(0xffF4F4F4),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Text(
                                        'Subtotal:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff242424),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            letterSpacing: 2
                                        ),
                                      ),

                                      Text(
                                        productProvider.getCartSubTotal().toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          letterSpacing: 2,
                                          color: Color(0xff777775),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Text(
                                        'Taxes:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff242424),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            letterSpacing: 2
                                        ),
                                      ),


                                      Text(
                                        productProvider.getCartTotalTax().toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          letterSpacing: 2,
                                          color: Color(0xff777775),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),


                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Text(
                                        'total:'.toUpperCase(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff242424),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            letterSpacing: 2
                                        ),
                                      ),


                                      Text(
                                        productProvider.getCartTotal().toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          letterSpacing: 2,
                                          color: Color(0xff777775),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          )

                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),

        ],
      ),
    );
  }
}
