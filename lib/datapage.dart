import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';


class DataPage extends StatefulWidget {
  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {

  Widget showImageA() {
    return Container(
      width: 350.0,
      child: Image.asset('assets/images/datanew.png'),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'ข้อมูลแขนง',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showImageA(),

                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
