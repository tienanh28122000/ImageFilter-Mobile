import 'dart:ui';

import 'package:flutter/material.dart';

import 'filter_app.dart';

void main() {
  return runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filter App',
      home: Scaffold(
          body: SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterApp()));
              },
              child: const Icon(
                Icons.navigate_next,
                size: 50,
              ),
              backgroundColor: Colors.blue[600],
            ),
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(
                Icons.add_a_photo,
                size: 30,
                color: Colors.blue[900],
              ),
              title: const Text(
                "Welcome to Filter App",
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
              ),
              backgroundColor: Colors.blue[600],
            ),
            body: Stack(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/may3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: .0, sigmaY: .0),
                  child: new Container(
                    decoration:
                        new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 12,
                      ),
                      //Row for menu icon (ROW 1)
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            SizedBox(height: 20),
                          ]),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons.ac_unit,
                            size: 27,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.ac_unit,
                            size: 27,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.ac_unit,
                            size: 27,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.ac_unit,
                            size: 27,
                            color: Colors.blue[900],
                          ),
                          Icon(
                            Icons.ac_unit,
                            size: 27,
                            color: Colors.blue[900],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),

                      //SPACING
                      SizedBox(height: 40),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            'MEMBERS : ',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),

                      //Spacing
                      SizedBox(height: 55),

                      //Row for City text (ROW 3)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              size: 27,
                              color: Colors.blue[900],
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Text(
                              "Nguyễn Tiểu Anh",
                              style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'Roboto',
                                color: Colors.blue[900],
                              ),
                            )
                          ]),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              size: 27,
                              color: Colors.blue[900],
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Text(
                              "Nguyễn Hồng Anh",
                              style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'Roboto',
                                color: Colors.blue[900],
                              ),
                            )
                          ]),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              size: 27,
                              color: Colors.blue[900],
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Text(
                              "Nguyễn Mạnh Tiến Anh",
                              style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'Roboto',
                                color: Colors.blue[900],
                              ),
                            )
                          ]),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Icon(
                              Icons.photo_library,
                              size: 27,
                              color: Colors.blue[900],
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Text(
                              "Trần Trung Hậu",
                              style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'Roboto',
                                color: Colors.blue[900],
                              ),
                            )
                          ]),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(40)),
                      FlatButton(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[600],
                            ),
                            height: 60,
                            width: 220,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get started',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.white),
                                ),
                              ],
                            )),
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterApp()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ])),
      )),
    );
  }
}
