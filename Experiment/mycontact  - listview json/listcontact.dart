import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'detailcontact.dart';

class ListContact extends StatefulWidget {
  _ListContactState createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {
  List contactJSON;
  Future<String> collectData() async {
    http.Response result = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/users"),
        headers: {"Accept": "application/json"});

    setState(() {
      contactJSON = jsonDecode(result.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.collectData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: contactJSON == null ? 0 : contactJSON.length,
        itemBuilder: (context, i) {
          return Padding(
            padding:
                const EdgeInsets.only(bottom: 8.0, right: 10.0, left: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailContact(name: contactJSON[i]['name'],
                            phone: contactJSON[i]['phone'],
                            email: contactJSON[i]['email'],)));
              },
              child: new Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      new Icon(Icons.call),
                      Padding(
                          padding: EdgeInsets.only(
                        right: 10.0,
                      )),
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            contactJSON[i]['name'],
                            style: TextStyle(fontSize: 20.0),
                          ),
                          new Text(contactJSON[i]['phone'])
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
