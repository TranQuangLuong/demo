import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter/src/rendering/box.dart';

class History extends StatefulWidget {
  @override
  _History createState() => _History();
}

class _History extends State<History> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5.0),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 60,
                      child: TextField(
                        style: TextStyle(color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Text(
                      'cancel ',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 550,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          _buildCard('assets/newbook.jpg','The Heart of Hell','Mitch Weiss','The untold story of courage and sacrifice \n in the shadow of Iwo Jima.'),
                          _buildCard('assets/newbook3.jpg','Adrennes 1944','Antony Beevor','#1 international bestseller and award \n winning history book.'),
                          _buildCard('assets/newbook2.jpg','War on the Gothic Line','Christian Jennings','Through the eyes of thirteen men and\n women from seven different nations'),
                          _buildCard('assets/newbook.jpg','War on the Gothic Line','Christian Jennings','Through the eyes of thirteen men and\n women from seven different nations'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                child:   BottomNavigationBar(
                  type:  BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white70,
                  backgroundColor: Color(0xff5ABD8C),
                  currentIndex: currentIndex,
                  onTap: (index) => setState(()=> currentIndex=index),
                  items: [
                  
             BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Color(0xff5ABD8C)),
             BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Color(0xff5ABD8C)),
             BottomNavigationBarItem(icon: Icon(Icons.dehaze),label: 'Wishlist',backgroundColor: Color(0xff5ABD8C)),
             BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart',backgroundColor: Color(0xff5ABD8C)),
               ],
              ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCard(String imagevale,String textvale,String textnew,String textend) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            height: 190.0,width: 116.0,
            child: Image(
              image: AssetImage(imagevale),
            ),
          ),
          Container(
            height: 150,width: 230,
            child: Card(
           
              child: Wrap(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        textvale,
                        style: TextStyle(
                            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        textnew,
                        style: TextStyle( color: Colors.grey[400],fontSize: 12,fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: <Widget>[
                           _buildStar(),
                           _buildStar(),
                           _buildStar(),
                           _buildStar(),
                           _buildStar(),
                        ]
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        textend,
                        style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.grey[400]),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: Color(0xff5ABD8C),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  print("Add to cart");
                                },
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(fontSize: 11,fontWeight: FontWeight.normal,color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  print("Add to wishlist");
                                },
                                child: Text(
                                  'Add to wishlist',
                                  style: TextStyle(
                                     fontSize: 11, fontWeight: FontWeight.normal, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    ],
  );
}
Widget _buildStar() {
  return  Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.all(3),
                            child: Center(
                              child: Icon(
                                Icons.star, color: Color(0xff5ABD8C), size: 10,
                              ),
                            ),
                          );
}