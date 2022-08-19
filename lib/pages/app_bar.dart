import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/providers/app_bar_provider.dart';

class ApplicationBar extends StatelessWidget {

  String title;
  ApplicationBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appBarProvider = Provider.of<AppBarProvider>(context);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 105,
          color: Color(0xff242424),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/menubutton.png'),
                      Text(
                        title.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Image.asset('assets/icons/searchbutton.png')
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: appBarProvider.buttonDetailList.map((item) =>  SizedBox(
                          width: 140,
                          height: 40,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(
                                    width: 1,
                                    color: item.borderColor,
                                  ),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(30),
                                  ),
                                  primary: item.color,
                                ), onPressed: (){},
                                child: Text(
                                  '${item.browseItem}'.toUpperCase(),
                                  style: TextStyle(
                                    color: item.textColor,
                                    fontFamily: 'Poppins',

                                  ),
                                )
                            ),
                          ),
                        ),).toList(),
                      )
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
