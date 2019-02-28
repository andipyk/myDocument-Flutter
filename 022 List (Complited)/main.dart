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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu Demo'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('(Basic, Horizontal, Grid) List'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('(Different types of items) List'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondRoute()));
                },
              ),
              ListTile(
                title: Text('(Working with long listss) List'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Container(height: 180.0, child: MyBasicList()),
            Container(height: 100.0, child: MyHorizontalList()),
            Container(height: 200.0, child: MyGridList()),
          ],
        ));
  }
}

// ################## BASIC LIST ##################
class MyBasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Peta'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album Foto'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Telepon'),
        )
      ],
    );
  }
}

// ################## HORIZONTAL LIST ##################
class MyHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 300.0,
          color: Colors.red,
        ),
        Container(
          width: 300.0,
          color: Colors.blue,
        ),
        Container(
          width: 300.0,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

// ################## GRID LIST ##################
class MyGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'GridList ${index + 1}',
              style: Theme.of(context).textTheme.title,
            ),
          );
        }));
  }
}

// ################## SECOND ROUTE ##################
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Different Type'),
        ),
        body: DifferentTypeOfItems());
  }
}

class DifferentTypeOfItems extends StatelessWidget {
  final items = List<ListItem>.generate(
      1200,
      (i) => i % 6 == 0
          ? HeadingItem("Heading $i")
          : MessageItem("Sender $i", "Message body $i"));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (item is HeadingItem) {
          return ListTile(
              title: Text(
            item.heading,
            style: Theme.of(context).textTheme.headline,
          ));
        } else if (item is MessageItem) {
          return ListTile(
            title: Text(item.sender),
            subtitle: Text(item.body),
          );
        }
      },
    );
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

// ################## 3RD ROUTE ##################

class ThirdRoute extends StatelessWidget {
  final items = List<String>.generate(100, (i) => 'Item ${i+1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Long List'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index ){
            return ListTile(title: Text('${items[index]}'),);
          },
        )
    );
  }
}


