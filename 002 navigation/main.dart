import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Halsatu(),
      // cara meroute activity
      routes: <String, WidgetBuilder>{
        '/Halsatu' : (BuildContext context) => new Halsatu(),
        '/Haldua' : (BuildContext context) => new Haldua(),
        
      },
    );
  }
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Musik"),
      ),
      body: Center(child: new IconButton(
        onPressed: (){ //Aksi ketika di pencet
          Navigator.pushNamed(context, '/Haldua');
        },
        icon: new Icon(
          Icons.headset,
          size: 50.0,
        ),
      )),
    );
  }
}


class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Speaker"),
      ),
      body: Center(child: new IconButton(
        // onPressed: (){//Aksi ketika di pencet
        //   Navigator.pushNamed(context, '/Halsatu');
        // },
        onPressed: null,
        icon: new Icon(
          Icons.speaker,
          size: 50.0,
        ),
      )),
    );
  }
}
