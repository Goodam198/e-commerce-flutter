import 'package:flutter/material.dart';
import 'package:e_commerce/classes/class_file.dart';

class AppBarProvider with ChangeNotifier{

  AppBarProvider(){
    getButton();
  }

  List<AppBarButton> buttonDetailList = [];


  List<AppBarButton> getButton(){

    buttonDetailList.clear();

    buttonDetailList.add(AppBarButton(browseItem: 'all', color: Color(0xffE10000), borderColor: Color(0xffE10000),textColor: Colors.white));
    buttonDetailList.add(AppBarButton(browseItem: 'trending', color: Color(0xff242424), borderColor: Color(0xff898989),textColor: Color(0xff898989)));
    buttonDetailList.add(AppBarButton(browseItem: 'new', color: Color(0xff242424), borderColor: Color(0xff898989),textColor: Color(0xff898989)));
    buttonDetailList.add(AppBarButton(browseItem: 'hot', color: Color(0xff242424), borderColor: Color(0xff898989),textColor: Color(0xff898989)));
    buttonDetailList.add(AppBarButton(browseItem: 'purchased', color: Color(0xff242424), borderColor: Color(0xff898989),textColor: Color(0xff898989)));

    return buttonDetailList;
  }



}