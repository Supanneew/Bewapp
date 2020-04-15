import 'package:enetb/loadA.dart';
import 'package:enetb/loadB.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth1 = 330;
double imageWidth2 = 300;

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ดาวน์โหลด',
          style: TextStyle(
            fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),), centerTitle: true,),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return LoadA();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/b-01.png',width: imageWidth1,),),

                SizedBox(
                  height: 15.0,
                ),

                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return LoadB();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/np-01.png',width: imageWidth2,),),
              ],
            ),
          )
        ],
      ),
    );
  }
}