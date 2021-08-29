import 'package:flutter/material.dart';
import "main.dart";

class App extends StatelessWidget {
  
  static final String title = 'TextFormField';
 
final formKey = GlobalKey<FormState>();
String username = '';
String Signln = '';
String Password ='';
String LoginLn ='';
 
 bool value = false;
 
   


  @override
  Widget build( BuildContext context){
    var body;
    return Scaffold(
      body: SafeArea(
        key: formKey,
        child: Container(                                   //Sign In To
          
          width: double.infinity,
          height: double.infinity,
            child: Column(
        
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children : <Widget>[
              Container(    
                margin: EdgeInsets.all(15),                                  //Images
                  child: Image( 
                    image:
                    AssetImage ('assets/one.jpg'),
                    ),
                ),
                SizedBox ( height: 10 ,),
               Container(
                 margin: EdgeInsets.all(15), 
             child:  Text(" Sign In ",
                     
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                
                ),
               ),
                  SizedBox(height: 15,),
                Column(
                
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
      Container( 
          margin: EdgeInsets.all(15), // cang le` 2 ben 
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(30),// vo tron` 4 goc
              
            ),
                
            child:  TextFormField(                            //Username
                        decoration: InputDecoration(
                             contentPadding: EdgeInsets.only(top: 12),
                          border: InputBorder.none,
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                       hintText:username,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                          ),
                          
                          validator: (value){
                            if (value!.length < 4){
                                return ' enter 4 ';

                            } else {
                              return null;
                            }
                          },
                          maxLength: 20,
                          
                        ),
                        
                         
            ),]
            
                       ),
                  
                        SizedBox(height: 10,),

              Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      Container( 
                        
                          margin: EdgeInsets.all(15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(30),
                              
            ),
                
            child:  TextFormField(                                  //Email
                        decoration: InputDecoration(
                             contentPadding: EdgeInsets.only(top: 12),
                          border: InputBorder.none,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                       
                          ),
                          
                          validator: (value){
                            if (value!.length < 4){
                                return ' enter 4 ';

                            } else {
                              return null;
                            }
                          },
                          maxLength: 20,
                          
                        ),
                                 
            ),
            ]
            
                       ),
                           SizedBox(height: 10,),
                     Column(
                        
                           crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container( 
                         
                            margin: EdgeInsets.all(15),
                                alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                       color: Colors.black12,
                                         borderRadius: BorderRadius.circular(30),
              
                                ),
                       child:  TextFormField(                   //Password
                         obscureText: true,
                        decoration: InputDecoration(
                             contentPadding: EdgeInsets.only(top: 12),
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                       hintText:Password,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                          ),
                          validator: (value){
                            if (value!.length < 4){
                                return ' enter 4 ';
                            } else {
                              return null;
                            }
                          },
                          maxLength: 20,
                                   ),
                                    ),
                                    ]
                                        ),
                                        SizedBox(height: 10,),
                                       
                                           Container(     
                                                     //Stay Logged In
                                            height: 20,
                                            child: Row( 
                                              children: <Widget>[
                                                new ClipRRect(
                                                  borderRadius: BorderRadius.all(Radius.circular(15.0))
    
                                                  ),
                                              
                                                Theme(
                                                  
                                                  data: ThemeData(unselectedWidgetColor: Colors.green),
                                                  child: 
                                                    new Checkbox(
                                                      value: value,
                                                      checkColor: Colors.green,
                                                      activeColor: Colors.green,
                                                      onChanged: (value) {
                                                        setState(() =>
                                                          this.value = value! 

                                                              );
                                                            },
                                                          ),
                                                        ),
                                            
                                  Text(
                                    " Stay Logged In ",
                                    style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                                 
                                  
                                      SizedBox(width: 50,),

                                    Container(                                   //Forgotten Password?
                                      
                                        alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: (){
                                              print("Forgotten Password?");

                                                },
                                       child: Text (
                                       " Forgotten Password? ? ",
                                       style: TextStyle(
                                          color: Colors.black26, 
                                             fontWeight: FontWeight.normal
           
                                                  ),
                                                       ),
                                                          ),
                                                           ),
                                            
                                              ],


                                                     ),
                                                     
                                                     ),
                                        
                        SizedBox(height: 10,),
                        Container(                                    //Sign Ln
                          margin: EdgeInsets.all(15),
                         padding : EdgeInsets.symmetric(vertical: 20),
                        
                           decoration: BoxDecoration(
                           border: Border.all(width: 2.0 ,color :const Color(0xff5ABD8C)),
                            color: Colors.green[300],
                              borderRadius: BorderRadius.circular(30),
                                 boxShadow: [
                                    BoxShadow(
                                       color: Colors.green.shade400,
                                            blurRadius: 20,
                                                 offset: Offset(0,16)
                                  )
                               ]
                               
                             ),
                              child: Center(
      
                                  child: InkWell(
                                  onTap: () {
                                      print(" Sign Ln");
                                         }, 
                                         
                               
                                  child: Text(
                                     " Sign Ln ",
                                     style: TextStyle(
                                       color: Color(0xfff4f4f4),
                                         fontSize: 18,
                                           fontWeight: FontWeight.bold
                                    
                                      ),
                                      
                                    ),
                                  ),
                                 ),
                                )
                             
                              ],
                             ),     
                                          ),  
                ),
              );
    
   
    
      
    

    }

  setState(bool Function() param0) {}
  }

