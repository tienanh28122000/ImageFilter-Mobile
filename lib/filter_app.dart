import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'image_page.dart';

class FilterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FilterAppState();
}

class _FilterAppState extends State<FilterApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar(String text) {
    final snackBar = new SnackBar(
      content: new Text(
        "Choose ${text}",
        style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
      ),
      duration: new Duration(hours: 1),
      action: new SnackBarAction(
          label: 'Ok',
          onPressed: () {
            print('press Ok on SnackBar');
          }),
    );

    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  //String greetings = 'http://192.168.1.150:5000/get?1';
  String _path = null;
  var file;

  Image image = Image.asset(
    'assets/images/unnamed.png',
    fit: BoxFit.cover,
    height: 400,
  );

  void _showPhotoLibrary() async {
    file = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _path = file.path;
    });
  }

  void _upload(File file, String path) async {
    var request = http.MultipartRequest(
        "POST", Uri.parse('http://192.168.1.47:5000/post_image/' + path));
    var pic = await http.MultipartFile.fromPath("image", file.path);
    request.files.add(pic);
    var send = await request.send();
  }

  void _deleteCache() {
    imageCache.clear();
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 70,
              child: Column(children: <Widget>[
                // ListTile(
                //     leading: Icon(Icons.photo_camera),
                //     title: Text("Take a picture from camera")
                // ),
                ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      _showPhotoLibrary();
                    },
                    leading: Icon(Icons.photo_library),
                    title: Text("Choose from photo library"))
              ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'FilterApp',
          style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  _path == null
                      ? image
                      : image = Image.file(
                          File(_path),
                          fit: BoxFit.cover,
                          height: 400,
                        ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: FlatButton(
                            child: Text(
                              'sepia',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                              ),
                            ),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('sepia');
                              _upload(file, 'sepia');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: FlatButton(
                            child: Text('grayscale',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('grayscale');
                              _upload(file, 'grayscale');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: FlatButton(
                            child: Text('invert',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('invert');
                              _upload(file, 'invert');
                            },
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 5),
                            child: GestureDetector(
                              child: FlatButton(
                                child: Text('electric',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                    )),
                                color: Colors.blue,
                                onPressed: () async {
                                  _showSnackBar('electric');
                                  _upload(file, 'electric');
                                },
                              ),
                              onTap: () {},
                            )),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('high_contrast',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('high_contrast');
                              _upload(file, 'high_contrast');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('darkened',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('darkened');
                              _upload(file, 'darkened');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('censored',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('censored');
                              _upload(file, 'censored');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('vintage',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('vintage');
                              _upload(file, 'vintage');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('brightness',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('brightness');
                              _upload(file, 'brightness');
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: FlatButton(
                            child: Text('saturated',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                )),
                            color: Colors.blue,
                            onPressed: () async {
                              _showSnackBar('saturated');
                              _upload(file, 'saturated');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Expanded(
                                child: SizedBox(
                              child: RaisedButton(
                                color: Colors.teal,
                                child: Text(
                                  'PRESS',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                onPressed: () {
                                  _showOptions(context);
                                },
                              ),
                              height: 50,
                            )),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Expanded(
                                child: SizedBox(
                              child: RaisedButton(
                                color: Colors.pinkAccent,
                                child: Text(
                                  'RESULT',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () async {
                                  _deleteCache();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ImagePage(image: image)));
                                },
                              ),
                              height: 50,
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
