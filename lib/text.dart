import 'package:flutter/material.dart';
void main() => runApp(new App());
class App extends StatelessWidget {
  @override
  Widget build( BuildContext context){

    return new MaterialApp(
      title:"  " ,
      home: Scaffold(
        appBar: new AppBar(
          title:  new Text('flutter App'),

        ),
        body: new Text(' hello '),

      ),
    );
  }
    
  }
  
