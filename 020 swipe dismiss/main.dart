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
        body: SwipeDemiss());
  }
}

class SwipeDemiss extends StatefulWidget {
  _SwipeDemissState createState() => _SwipeDemissState();
}

class _SwipeDemissState extends State<SwipeDemiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    // ################## FIRST CODE ##################
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            
            setState(() {
              items.removeAt(index);
            });

            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('${item} telah dihapus'),
            ));

          },
          child: ListTile(
            title: Text(item),
          ),
        );
        // return ListTile(title: Text('${items[index]}'),);
      },
    );
    // ################## LAST CODE ##################
  }
}
