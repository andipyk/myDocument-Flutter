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
        body: OrientationList());
  }
}

class OrientationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // ################## FIRST CODE ##################

    return OrientationBuilder(builder: (context, orientation) {
      return GridView.count(
        // Create a grid with 2 columns in portrait mode, or 3 columns in
        // landscape mode.
        crossAxisCount: orientation == Orientation.portrait ? 2 : 3,

        // Generate 100 Widgets that display their index in the List
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      );
    });

    // ################## FIRST CODE ##################

    
  }
}
