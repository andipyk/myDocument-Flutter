import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing",
    home: new HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card And Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                myIcon: Icons.home, 
                myText: "Home", 
                myColor: Colors.brown ),
            new MyCard(
                myIcon: Icons.cake, 
                myText: "Cake", 
                myColor: Colors.blue ),
            new MyCard(
                myIcon: Icons.call, 
                myText: "Call", 
                myColor: Colors.red ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  //Deklarasi
  MyCard({this.myIcon, this.myText, this.myColor});
  final IconData myIcon;
  final String myText;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 15.0, right: 15.0),
      child: Container(
        child: new Card(
            child: new Column(
          children: <Widget>[
            new Icon(myIcon, size: 50.0, color: myColor),
            new Text(
              myText,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        )),
      ),
    );
  }
}
