import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHomePage(title: 'List Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new ListView(
          children: <Widget>[
            new BasicList(Icons.alarm, "Alarm"),
            new BasicList(Icons.warning, "Warning"),
            new BasicList(Icons.dashboard, "Dashboard"),
            new BasicList(Icons.alarm, "Alarm"),
            new BasicList(Icons.warning, "Warning"),
            new BasicList(Icons.dashboard, "Dashboard"),
            new ImgList("img/flutter.jpg", "Flutter",
                "Belajar Mudah Multi Platform App"),
            new ImgList("img/html.jpg", "HTML", "Belajar Mudah Basic Website"),
            new ImgList(
                "img/css.jpg", "CSS", "Belajar Mudah Mempercantik Website"),
            new ImgList("img/flutter.jpg", "Flutter",
                "Belajar Mudah Multi Platform App"),
            new ImgList("img/html.jpg", "HTML", "Belajar Mudah Basic Website"),
            new ImgList(
                "img/css.jpg", "CSS", "Belajar Mudah Mempercantik Website"),
          ],
        ));
  }
}

//  FOR SIMPLE ICON LIST VIEW
class BasicList extends StatelessWidget {
  //deklarasi BasicList Parse
  BasicList(this.myIcon, this.myText);
  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        leading: new Icon(myIcon),
        title: new Text(myText),
      ),
    );
  }
}

//  FOR IMAGE LIST VIEW
class ImgList extends StatelessWidget {
  ImgList(this.myImg, this.myText, this.myDesc);
  final String myImg;
  final String myText;
  final String myDesc;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        // ROW or COLUMN
        children: <Widget>[
          new Image.asset(
            myImg,
            width: 50.0,
          ),
          new Padding(padding: new EdgeInsets.only(right: 20.0)),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start, // untuk rata kiri
            children: <Widget>[
              new Text(
                myText,
                style: TextStyle(fontSize: 25.0),
              ),
              new Text(
                myDesc,
                style: TextStyle(fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
