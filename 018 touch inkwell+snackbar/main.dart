import 'package:flutter/material.dart';

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
        body: MyFlatButton());
  }
}

class MyFlatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ################## FIRST CODE ##################
    return Center(
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Keluarlah Snackbar'),
          ));
        },
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Text('Flat Button'),
        ),
      ),
    );
    // ################## FIRST CODE ##################
  }
}
