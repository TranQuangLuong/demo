import 'package:flutter/material.dart';
import "main.dart";
import 'package:flutter/services.dart';



class SignIn extends StatefulWidget {
  
  @override
  _SignIn createState() => _SignIn(); 
    
}


class _SignIn extends State<SignIn> {
  final formKey = GlobalKey<FormState>();

String username = '';
String First = '';
String Email = '';
String Phone = '';
String Group = '';
String Password = '';
bool value = false;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          key: formKey,
        child: Container(
           margin: EdgeInsets.all(15.0),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage('assets/one.jpg'),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(' Sign Up ', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                )
                
                ),
                SizedBox(height: 5,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.all(10.0),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                child:  TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ' First and LastName',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        hintText:First,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                child:  TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ' Email ',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        hintText:Email,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                      ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 5,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                child:  TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ' Mobile Phone ',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        hintText:Phone,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                      ),
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 5,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                child:  TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ' Group Special Code (optional) ',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        hintText:Group,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                      ),
                      ),
                    ),
                  ],
                ),SizedBox(height: 5,),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),

                child:  TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: ' Password ',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                        hintText:Password,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                      ),
                      ),
                    ),
                  ],
                ),
               new Row(
               
                 
      children: <Widget>[
        
        new ClipRRect(
      
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      
      child: SizedBox(
        width: Checkbox.width,
        height: Checkbox.width,
        child: Container(
          
          decoration: new BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: new BorderRadius.circular(5),
          ),
          child: Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.green,
            ),
            child: Checkbox(
              
              value: value,
              onChanged: (state) =>
                  setState(() => value = !value),
              activeColor: Colors.green,
              
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
        ),
      ),
    ),
    SizedBox(width: 10.0,),
        new Expanded(
            child: new Text('Please sign me up for the monthly newsletter.',
              style: new TextStyle(
                  color: Color(0xff797979)
              ),
            )
        ),

      ],
    ), 
    SizedBox(height: 15,),
                        Container(                                    //Sign Ln
                          margin: EdgeInsets.all(10),
                         padding : EdgeInsets.symmetric(vertical: 18),
                        
                           decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1,color: Colors.green),
                              borderRadius: BorderRadius.circular(20.0),
                                
                               
                             ),
                              child: Center(
      
                                  child: InkWell(
                                  onTap: () {
                                      print(" Sign Ln");
                                         }, 
                                         
                               
                                  child: Text(
                                     " Sign Ln ",
                                     style: TextStyle(
                                       color: Color(0xff5ABD8C),
                                         fontSize: 20,
                                           fontWeight: FontWeight.normal
                                    
                                      ),
                                      
                                    ),
                                  ),
                                 ),
                                ),
               
            ],
          ),
        ),
        ),
    );
  }
  
}
