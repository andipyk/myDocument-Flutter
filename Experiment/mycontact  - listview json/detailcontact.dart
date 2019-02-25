import 'package:flutter/material.dart';

class DetailContact extends StatelessWidget {
  DetailContact({this.name, this.phone, this.email});
  final String name;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Detail Contact'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              new Text("Name :"),
              new Text(name),
            ],
          ),
          Row(
            children: <Widget>[
              new Text("Email :"),
              new Text(email),
            ],
          ),
          Row(
            children: <Widget>[
              new Text("Phone :"),
              new Text(phone),
            ],
          ),
        ],
      )),
    );
  }
}
