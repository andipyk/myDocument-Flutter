import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// class ListJson extends StatelessWidget {

// ListJson({this.data});
// final List<String> data;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         child: new ListView.builder( //wodget untuk generate data
//           itemCount: data.length,
//           itemBuilder: (context, index){
//             return new ListTile(
//               leading: new Icon(Icons.widgets),
//               title: new Text("${data[index]}"),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class ListJson extends StatefulWidget {
  _ListJsonState createState() => _ListJsonState();
}

class _ListJsonState extends State<ListJson> {
  List dataJSON;

  Future<String> ambilData() async {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJSON = jsonDecode(hasil.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return new Card(
            child: Padding(
              padding: const EdgeInsets.only(bottom:8.0, left: 5.0, right: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    dataJSON[i]['title'],
                    style: new TextStyle(color: Colors.blue, fontSize: 15.0),
                  ),
                  new Text(dataJSON[i]['body'],
                  style: new TextStyle(color: Colors.black54, fontSize: 8.0),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
