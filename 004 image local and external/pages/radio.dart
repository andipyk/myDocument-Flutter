import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: Column(
          children: <Widget>[
            new Padding(padding:  new EdgeInsets.all(20.0),),
            new Text("Radio", style: new TextStyle(fontSize: 30.0)),
            new Padding(padding: new EdgeInsets.all(20.0),),
            // new Image.asset("assets/radio.png", width: 200.0,)
            new Image(image: NetworkImage("https://s3.amazonaws.com/peoplepng/wp-content/uploads/2018/08/21160528/Vintage-Radio-PNG-Image-1024x606.png"), width: 200.0),
          ],
        ),
      ),
    );
  }
}