import 'package:flutter/material.dart';
import 'navigation_page.dart';
import 'package:e_commerce/providers/product_provider.dart';
import 'package:provider/provider.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>  NavigationPage()));
            },
            child: Image.asset('assets/icons/backbutton.png')
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Image.asset('assets/icons/searchbutton.png')
          )
        ],
        backgroundColor: Color(0xff242424),
        title: Text(
          'Product Details',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: Card(
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    productProvider.likeProduct(productProvider.selectedProduct.id);
                  },
                  icon: productProvider.selectedProduct.isLiked? Image.asset('assets/icons/heartitemenabled.png'):Image.asset('assets/icons/heartitem.png'),
                ),


                IconButton(
                  onPressed: () {
                    productProvider.addToCart(productProvider.selectedProduct.id);
                  },
                  icon: productProvider.selectedProduct.isCart? Image.asset('assets/icons/favoriteditemenabled.png'):Image.asset('assets/icons/favoriteditem.png'),
                )
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/${productProvider.selectedProduct.image}',
                  height: 107,
                  width: 235,

                ),

              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/icons/flag.png')
                ),

                Text(
                  'trending'.toUpperCase(),
                  style: TextStyle(
                      color:Color(0xffE10000),
                      fontFamily: 'Poppins',
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2
                  ),
                )
              ],
            ),


            Divider(
              height: 1,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productProvider.selectedProduct.description,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1
                    ),
                  ),
                  Text(
                    '\$${productProvider.selectedProduct.price.toString()}',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        letterSpacing: 2
                    ),
                  )
                ],
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/icons/heart.png')
                ),

                Text('${productProvider.selectedProduct.numberOfLikes} likes',
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

                Text('${productProvider.selectedProduct.numberOfComments} comments'
                  ,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      letterSpacing: 2
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      primary: productProvider.selectedProduct.isCart? Color(0xff4A4A4A):Color(0xffE10000) ,
                    ), onPressed: (){
                  productProvider.addToCart(productProvider.selectedProduct.id);
                },
                    child: Text(
                      productProvider.selectedProduct.isCart? 'added to cart'.toUpperCase(): 'add to cart'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1

                      ),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('${productProvider.selectedProduct.numberOfLikes} people likes this'.toUpperCase()),
            ),

            Divider(
              height: 3,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:productProvider.selectedProduct.peopleImages.map((image) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/${image}'),
                          radius: 40.0
                      ),
                    )).toList()
                )
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Text('average review'.toUpperCase()),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: productProvider.selectedProduct.stars.map((starIcon) => Image.asset('assets/icons/${starIcon}')).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
