import 'dart:html';
import 'dart:ui';

import 'package:demo/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/flat_button.dart';
class LoginScreen extends StatefulWidget {

@override
  _LoginScreenStage createState() => _LoginScreenStage(); 
}


class _LoginScreenStage extends State<LoginScreen> {

  bool isRememberme = false;

Widget buildEmail(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold

            )
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,16)
                  )
              ]
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff5ac18e), 
                  ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.black38
                )
              ),
              ),
          )
        ],  
    );
}

Widget buirememberme(){
  return Container(
    height: 20,
    child: Row( 
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberme,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberme = value! ;

                });
              },
            ),
           ),
           Text(
             " remember me",
             style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.bold
             ),
           )
      ],
    ),
  );
}

Widget buildloginBTN() {
  
  return Container(
    padding : EdgeInsets.symmetric(vertical: 15),
    width: double.infinity,
    color: Colors.white,
    child: Center(
      
    child: InkWell(
      onTap: () {
        print(" Login pressed");
      }, 
    
      child: Center(

      child: Text(
           " Login ",
        style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
         )
        ),
      ),
    ),
  )
  );
}

Widget buiSignBTN(){
  return GestureDetector(
    onTap: () => print("Sign up pressed"),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: " don\'t have an Account ?" ,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          ),
          TextSpan(
            text: " Sogn Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold

            )
          )
        ]
      ),
    ),
  );
}


Widget buiforgotpass(){
   return Container(
     alignment: Alignment.centerRight,
     child: InkWell(
       onTap: (){
         print("Forgot password pressed");

       },
       child: Text (
         " Forgot password ? ",
         style: TextStyle(
           color: Colors.white, 
             fontWeight: FontWeight.bold
           
         ),
       ),
     ),
   );
}

Widget builpassword(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'password',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold

            )
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0,16)
                  )
              ]
            ),
            height: 60,
            child: TextField(
             obscureText: true,
              style: TextStyle(
                color: Colors.black54,

              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff5ac18e), 
                  ),
                hintText: 'password',
                hintStyle: TextStyle(
                  color: Colors.black38
              
                )
              ),
              ),
          )
        ],  
    );
}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: AnnotatedRegion<SystemUiOverlayStyle>(
       value: SystemUiOverlayStyle.light,
       child: GestureDetector(
         child: Stack(
           children: <Widget> [ 
             Container(
               height: double.infinity ,
               width: double.infinity,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                    colors: [
                      Color(0x665ac18e),
                       Color(0x995ac18e),
                        Color(0xcc5ac18e),
                         Color(0xff5ac18e),
                    ]
                 )
                 ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,

                  ),
                   child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       'Sign In',  
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 40,
                         fontWeight: FontWeight.bold
                         
                       ),
                     ),
                     SizedBox(height: 50),
                     buildEmail(),
                     SizedBox(height: 30),
                     builpassword(),
                     SizedBox(height: 30),
                     buiforgotpass(),
                     buirememberme(),
                     SizedBox(height: 30),
                     buildloginBTN(),
                     SizedBox(height: 15),
                     buiSignBTN(),
                   ],
                 ),
                ),
               ),  
           ],
         )
          ),
       ) , 
   );
  }
}
