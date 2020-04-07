import 'package:enetb/subpageA.dart';
import 'package:enetb/subpageB.dart';
import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 200;

class SubPage extends StatefulWidget {
  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'วิชาที่เปิดสอน',
        style: TextStyle(
        fontFamily: fontFam,fontWeight: FontWeight.bold,
        fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return SubpageA();});
                  Navigator.of(context).push(route);
                }
                , child: Image.asset('assets/images/sub1.png',width: imageWidth,),),

                SizedBox(
                  height: 20.0,
                ),
                FlatButton(onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return SubpageB();});
                  Navigator.of(context).push(route);
                }
                  , child: Image.asset('assets/images/sub2.png',width: imageWidth,),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
