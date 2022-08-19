import 'package:e_commerce/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff242424),
        leading: TextButton(
          onPressed: (){},
          child: Text(
            'Edit',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 16,
                letterSpacing: 2,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: Color(0xffF4F4F4),
                  child: Column(
                    children: [

                      Padding(
                        padding:  EdgeInsets.fromLTRB(0,30,0,10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              border: Border.all(
                                color: Colors.white,
                                width: 7,
                              )
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/${userProvider.user.image}'),
                            radius: 60,
                          ),
                        ),
                      ),

                      Text(
                        userProvider.user.name,
                        style: TextStyle(
                            color: Color(0xff242424),
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            fontFamily: 'Poppins'
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 330,
                              child: Text(
                                userProvider.user.description,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff242424),
                                    letterSpacing: 2
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),


                      Divider(
                        height: 10,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),


                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset('assets/icons/hearticon.png'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Favourites',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      Divider(
                        height: 10,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset('assets/icons/checkicon.png'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'To Buy',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),


                      Divider(
                        height: 10,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset('assets/icons/carticon.png'),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Purchases',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                        child: Divider(
                          height: 10,
                          thickness: 1,
                          indent: 15,
                          endIndent: 15,
                        ),
                      ),
                    ],
                  ),

                ),
              ),
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
                      primary:  Color(0xffE10000),
                    ), onPressed: (){},
                    child: Text(
                      'logout'.toUpperCase(),
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

          ],
        ),
      ),
    );

  }
}
