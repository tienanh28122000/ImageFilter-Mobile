import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class ImagePage extends StatelessWidget{
  final image;
  var nowParam = DateFormat('yyyyddMMHHmm').format(DateTime.now());
  ImagePage ({@required this.image});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar:AppBar(
        title: Text('Filter App',style: TextStyle(fontSize: 20),),
      ),
      body: Column(
        children: [
          Container(child: image,height: 300,padding: EdgeInsets.all(20)),
          Container(height: 300,
            padding: EdgeInsets.all(20),
            // child:  Image.network('http://192.168.1.47:5000/get_image'+ '#' + nowParam,fit: BoxFit.cover,height: 400,),
            child:  Image.network('http://192.168.1.47:5000/get_image', key: ValueKey(new Random().nextInt(100)) ,fit: BoxFit.cover,height: 400,),
          )
        ],
      ),
    ));

  }

}