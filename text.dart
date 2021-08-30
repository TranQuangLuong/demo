import 'package:flutter/material.dart';
import "main.dart";
class App extends StatefulWidget {

 static final String title = 'TextFormField';

  @override
  _AppState createState() => _AppState();
  
}
class _AppState extends State<App> {
final formKey = GlobalKey<FormState>();
String username = '';
String Signln = '';
String Password ='';
String LoginLn ='';
 bool value = false;  @override
 Widget build( BuildContext context){
   var body;
  return Scaffold(
    body: SafeArea(
      key: formKey,
       child: Container(                                   //Sign In To
             margin: EdgeInsets.all(15.0),
        width: double.infinity,
        height: double.infinity,
            child: Column(       
            mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children : <Widget>[
              Container(                                           //Images
                margin: EdgeInsets.all(10),                                  
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
        padding : EdgeInsets.symmetric(vertical: 3.0),
          margin: EdgeInsets.all(5.0), // cang le` 2 ben 
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.circular(20.0),// vo tron` 4 goc             
            ),            
           child:  TextFormField(                            //Username
                       decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                         border: InputBorder.none,
                        labelText: 'Username',
                         labelStyle: TextStyle(
                          fontSize: 15,
                            color: Colors.black26,
                        ),
                     hintText:username,
               hintStyle: TextStyle(
                  color: Colors.black87,
               )
                        ),
                        ),                                               
            ),]           
                       ),                  
                       SizedBox(height: 10,),
               Column(
                
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
      Container( 
        padding : EdgeInsets.symmetric(vertical: 3.0),
          margin: EdgeInsets.all(5.0), // cang le` 2 ben 
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.circular(20.0),// vo tron` 4 goc
              
           ),
              
            child:  TextFormField(                            //Email
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                        border: InputBorder.none,
                          labelText: 'email',
                         labelStyle: TextStyle(
                          fontSize: 15,
                            color: Colors.black26,
                        ),
                       hintText:Signln,
                hintStyle: TextStyle(
                  color: Colors.black87
                )
                         ),

                      ),
                                               
            ),]           
                       ),                  
                         SizedBox(height: 10,),
                      Column(
                
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
      Container( 
         padding : EdgeInsets.symmetric(vertical: 3.0),
          margin: EdgeInsets.all(5.0), // cang le` 2 ben 
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
              color: Color(0xffEFEFEF),
              borderRadius: BorderRadius.circular(20.0),// vo tron` 4 goc           
            ),
            child:  TextFormField(                            //Password
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),                       
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontSize: 15,
                            color: Colors.black26,
                      ),
                          hintText:Password,
        hintStyle: TextStyle(
                  color: Colors.black87,
                ),
                          ),

                        ),
                        
                         
            ),]
            
                       ),
                  
                                       SizedBox(height: 10,),

                                           new Row(              //Stay Logged In //Forgotten Password?
               
                                                        
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
                                                      activeColor: Color(0xff5ABD8C),
                                                      
                                                      materialTapTargetSize: MaterialTapTargetSize.padded,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10.0,),
                                                new Expanded(
                                                    child: new Text('Stay Logged In',
                                                      style: new TextStyle(
                                                          color: Color(0xff707070)
                                                      ),
                                                    )
                                                ),
                                                new  Container(                                   //Forgotten Password?                                     
                                                  alignment: Alignment.centerRight,
                                                    child: InkWell(
                                                      onTap: (){
                                                        print("Forgotten Password?");
                                                  },
                                                  child: Text (
                                                     " Forgotten Password? ? ",
                                                    style: TextStyle(
                                                       color: Color(0xff707070), 
                                                         fontWeight: FontWeight.normal                        
                                                ),
                                                      ),
                                                        ),
                                                           ),                                           
                                                  ],                                                                                    
                                                 ),                                       
               SizedBox(height: 10,),
                  Container(                                    //Sign Ln
                      margin: EdgeInsets.all(10),
                        padding : EdgeInsets.symmetric(vertical: 15),                    
                          decoration: BoxDecoration(                       
                            color: Color(0xff5ABD8C),
                              borderRadius: BorderRadius.circular(20),
                               boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff5ABD8C),
                                      blurRadius: 15,
                                        offset: Offset(0,10)
                                )
                               ],                             
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal                                  
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
  
}

