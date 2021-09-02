import 'package:flutter/material.dart';
import 'main.dart';

class Will extends StatefulWidget {
  @override
  _Will createState() => _Will();
}

class _Will extends State<Will> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/one.jpg'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                _buildText(' Will Newman ', Colors.black, 30.0,  FontWeight.bold),
                                SizedBox(
                                  height: 5.0,
                                ),
                                _buildText(
                                    " Constantly travelling and keeping up\n "
                                    " to date with business related books. ", Colors.black, 10.0,FontWeight.normal),
                                SizedBox(
                                  height: 30.0,
                                ),
                                _buildText(' location-arrow     Newcastle - Australia ',Colors.black,9.0,FontWeight.normal),
                                SizedBox(height: 30.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        _buildText(' 24 ', Colors.grey.shade400,24.0, FontWeight.bold),
                                        _buildText(' Books ',Colors.grey.shade400,10.0, FontWeight.normal),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        _buildText(' 5 ', Colors.grey.shade400,24.0, FontWeight.bold),
                                        _buildText(' Reviews ', Colors.grey.shade400, 10.0,FontWeight.normal),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                _buildText(' Your purchases (21) ',Colors.grey.shade400,20.0,FontWeight.bold),
                              ],
                            ),
                            SizedBox( width: 10.0,),
                            _buildEditFrofile(),
                          ],
                        ),
                        _buiListView(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _buildText(' Your reviews (7) ',                     //Your reviews (7)
                                Colors.grey.shade400, 20.0, FontWeight.bold),
                          ],
                        ),
                        _buildCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _buildText(String text, Color colortext, sizetext, Weighttext) {
  return Text(
    text,
    style:
        TextStyle(fontSize: sizetext, fontWeight: Weighttext, color: colortext),
  );
}
Widget _buildStar() {
  return Container(
    margin: EdgeInsets.all(3),
    child: Center(
      child: Icon(
        Icons.star,
        color: Color(0xff5ABD8C),
        size: 10,
      ),
    ),
  );
}
Widget _buiListView(){
  return Stack(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20.0),
                                height: 200.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Image.asset("assets/books.jpg"),
                                    Image.asset("assets/book2.jpg"),
                                    Image.asset("assets/book.jpg"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
}
Widget _buildCard(){
  return  Container(
                          height: 150.0,
                          width: 308.0,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            elevation: 10.0,
                            margin: EdgeInsets.all(15.0),
                            shadowColor: Color(0xff707070),
                            child: Wrap(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(10.0),
                                          child: _buildText(
                                              'A must read for everybody. This \n'
                                              ' book taught me so many things \n'
                                              ' about...',Color(0xff212121),12.0,FontWeight.normal),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(10.0),
                                          child: Center(
                                            child: InkWell(
                                              onTap: () {
                                                print("Read more >");
                                              },
                                              child: _buildText(' Read more > ',Color(0xff212121),12.0,FontWeight.normal),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            _buildStar(),
                                            _buildStar(),
                                            _buildStar(),
                                            _buildStar(),
                                            _buildStar(),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 100,
                                      child: Image(
                                        image: AssetImage('assets/books.jpg'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
}
Widget _buildEditFrofile(){
  return  Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Image(
                                    image: AssetImage('assets/five.jpg'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  margin: EdgeInsets.all(15.0),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xff5ABD8C),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        print("Edit Profile");
                                      },
                                      child: _buildText('Edit Profile',Colors.white,13,FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            );
}