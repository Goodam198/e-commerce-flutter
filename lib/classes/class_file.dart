import 'package:flutter/material.dart';

class AppBarButton{

  String browseItem;
  Color color;
  Color borderColor;
  Color textColor;

  AppBarButton({required this.browseItem,required this.color, required this.borderColor,required this.textColor});

}


class Product{

  double productTax;
  int id;
  bool isLiked;
  bool isCart;
  String image;
  String description;
  double price;
  int numberOfLikes;
  int numberOfComments;
  List peopleImages;
  List  stars;
  Color color;
  String name;
  String colorName;

  Product({


    required this.productTax,
    required this.id,
    required this.numberOfComments,
    required this.numberOfLikes,
    required this.isLiked,
    required this.price,
    required this.description,
    required this.image,
    required this.isCart,
    required this.stars,
    required this.peopleImages,
    required this.colorName,
    required this.name,
    required this.color

});

}


class CartItem{

  Product product;
  int productCount;

  CartItem({required this.product,this.productCount = 1 });

}

class User{
  String name;
  String image;
  String description;
  // Product favourites;
  // Product toBuy;
  // Product purchases;

  User({required this.name, required this.image, required this.description});  //required this.favourites, required this.purchases, required this.toBuy

}







