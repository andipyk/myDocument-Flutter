import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding:  new EdgeInsets.all(20.0),),
            new Text("Smartphone", style: new TextStyle(fontSize: 30.0)),
            new Padding(padding: new EdgeInsets.all(20.0),),
            // new Image.asset("assets/smartphone.png", width: 200.0,)
            new Image(image: NetworkImage("http://www.stickpng.com/assets/images/58adef56e612507e27bd3c26.png"), width: 200.0, )
          ],
        ),
      ),
    );
  }
}