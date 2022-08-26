import 'package:flutter/material.dart';
import 'package:e_commerce/classes/class_file.dart';

class ProductProvider with ChangeNotifier{

  ProductProvider(){
   getProductDetail();
  }

  List<Product> products = [];

  List<Product> getProductDetail(){

    products.clear();

    //product 1
    products.add(Product(

        productTax: 0,
        id: 0,
        numberOfComments:  101,
        numberOfLikes: 23,
        isLiked: false,
        price: 949.00,
        description: 'Google Pixel (128 GB) - Gold',
        image: 'phone.jpg',
        isCart: false,
        stars: [

          'starfilled.png',
          'starfilled.png',
          'starfilled.png',
          'starfilled.png',
          'starempty.png'

        ],

        peopleImages:  [
          '1.jpg',
          '2.jpg',
          '3.jpg',
          '4.jpg',
          '5.jpg',
          '6.jpg'
        ],
        colorName: 'Gold',
        name: 'Google Pixel',
        color: Color(0xffEBC8AA)

    ));


    //product 2
    products.add(Product(


        productTax: 0,
        id: 1,
        numberOfComments: 90,
        numberOfLikes: 20,
        isLiked:  false,
        price: 1000.00,
        description: 'Flat Screen TV - Black',
        image:  'tv.jpg',
        isCart: false,
        stars: [

          'starfilled.png',
          'starfilled.png',
          'starfilled.png',
          'starempty.png',
          'starempty.png'


        ],
        peopleImages:  [
          '1.jpg',
          '2.jpg',
          '3.jpg',
          '4.jpg',
          '5.jpg',
          '6.jpg'
        ],
        colorName: 'Black',
        name: 'Flat Screen TV',
        color: Colors.black

    ));


    //product 3
    products.add(Product(

        productTax: 0,
        id: 2,
        numberOfComments: 85,
        numberOfLikes: 18,
        isLiked:  false,
        price:  100.00,
        description: 'PS4 game controller - Black',
        image: 'controller.jpg',
        isCart: false,
        stars: [

          'starfilled.png',
          'starfilled.png',
          'starfilled.png',
          'starempty.png',
          'starempty.png'


        ],
        peopleImages:  [
          '1.jpg',
          '2.jpg',
          '3.jpg',
          '4.jpg',
          '5.jpg',
          '6.jpg'
        ],
        colorName: 'Black',
        name: 'PS4 game controller',
        color: Colors.black

    ));


    //product 4
    products.add(Product(

        productTax: 0,
        id: 3,
        numberOfComments: 73,
        numberOfLikes: 13,
        isLiked:  false,
        price: 250.00,
        description: 'WD BLUE HDD (500 GB) - Silver',
        image:'hdd.jpg',
        isCart: false,

        stars: [

          'starfilled.png',
          'starfilled.png',
          'starempty.png',
          'starempty.png',
          'starempty.png'


        ],

        peopleImages:  [
          '1.jpg',
          '2.jpg',
          '3.jpg',
          '4.jpg',
          '5.jpg',
          '6.jpg'
        ],

        colorName: 'Silver',
        name: 'WD BLUE HDD',
        color: Color(0xff777775)

    ));


    //product 5
    products.add(Product(

        productTax: 0,
        id: 4,
        numberOfComments:  55,
        numberOfLikes: 10,
        isLiked: false,
        price: 1300.00,
        description: 'HP Spectre (10th Gen) - Silver',
        image:   'laptop.jpg',
        isCart:  false,

        stars: [

          'starfilled.png',
          'starfilled.png',
          'starempty.png',
          'starempty.png',
          'starempty.png'


        ],

        peopleImages:  [
          '1.jpg',
          '2.jpg',
          '3.jpg',
          '4.jpg',
          '5.jpg',
          '6.jpg'
        ],
        colorName: 'Silver',
        name: 'HP Spectre',
        color: Color(0xff777775)

    ));

    return products;
  }


  Product selectedProduct = Product(

      productTax: 0,
      id: 0,
      numberOfComments:  101,
      numberOfLikes: 23,
      isLiked: false,
      price: 949.00,
      description: 'Google Pixel (128 GB) - Gold',
      image: 'phone.jpg',
      isCart: false,
      stars: [

        'starfilled.png',
        'starfilled.png',
        'starfilled.png',
        'starfilled.png',
        'starempty.png'

      ],

      peopleImages:  [
        '1.jpg',
        '2.jpg',
        '3.jpg',
        '4.jpg',
        '5.jpg',
        '6.jpg'
      ],
      colorName: 'Gold',
      name: 'Google Pixel',
      color: Color(0xffEBC8AA)

  );


  void getSelectedProduct(Product myProduct){

    selectedProduct = myProduct;
    notifyListeners();

  }

  List<CartItem> cart = [];

  void addToCart(productId){

    int index = cart.indexWhere((cartItem) => cartItem.product.id == productId );
      if( index != -1){
        products[productId].isCart = !products[productId].isCart;
        cart.removeAt(index);
      }

      else{
        products[productId].isCart = !products[productId].isCart;
        cart.add(CartItem(product: products[productId]));
      }

    notifyListeners();
  }

  void addProduct(index){

    cart[index].productCount++;

    notifyListeners();

  }


  void reduceProduct(index){

    if(cart[index].productCount > 1 ){
      cart[index].productCount--;
    }
    notifyListeners();

  }


  double getCartSubTotal(){

    double subTotal = 0;

    for (var cartItem in cart) {

      subTotal += (cartItem.product.price * cartItem.productCount) ;

    }
    return subTotal;

  }

  double getCartTotalTax(){

    double totalTax = 0;

    for (var cartItem in cart) {
      totalTax += cartItem.product.productTax;

    }
    return totalTax;

  }

  double getCartTotal(){

    double total = 0;

      total += getCartSubTotal() + getCartTotalTax();

    return total;

  }




  void likeProduct(productId){

    if(products[productId].isLiked){
      products[productId].isLiked = !products[productId].isLiked;
      products[productId].numberOfLikes--;
    }
    else{

      products[productId].isLiked = !products[productId].isLiked;
      products[productId].numberOfLikes++;

    }

    notifyListeners();
  }


}