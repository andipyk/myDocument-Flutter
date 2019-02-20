import 'package:flutter/material.dart';

import 'komputer_page.dart' as komputer;
import 'radio_page.dart' as radio;
import 'headset_page.dart' as headset;
import 'smartphone_page.dart' as smartphone;

void main() {
  runApp(new MaterialApp(
    title: 'tabBar',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller; // inisiasi controller baru

  @override
  // menambahkan initState()
  void initState() {
    //tambahkan with SingleTickerProviderStateMixin untuk vsync
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }
  //end initstate

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text('Daftar Elektronik'),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
              // text: "komputer",
              // jika ingin menambahkanb text
            ),
            new Tab(icon: new Icon(Icons.headset)),
            new Tab(icon: new Icon(Icons.radio)),
            new Tab(icon: new Icon(Icons.smartphone)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new smartphone.Smartphone()
        ],
      ),

      //Navigasi di bawah sama dengan yang nav diatas
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text:"Komputer"),
            new Tab(text:"Headset"),
            new Tab(text:"Radio"),
            new Tab(text:"Smartphone"),
          ],
        ),
      ),
    );
  }
}
