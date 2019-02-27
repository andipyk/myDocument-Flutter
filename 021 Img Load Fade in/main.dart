import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        body: Img1());
  }
}

class Img1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       // ################## FIRST CODE ##################
        child: Stack(
      children: <Widget>[
        Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               // ################## BY MEMORY ASSET ##################
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
              Padding(padding: EdgeInsets.only(bottom: 20.0),),
               // ################## BY NETWORK ASSET ##################
              FadeInImage.assetNetwork(
                placeholder: 'img/pacman.gif',
                image: 'https://picsum.photos/250?image=9',
              ),
            ],
          ),
        ),
      ],
    ));
     // ################## END CODE ##################
  }
}
