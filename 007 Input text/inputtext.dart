import 'package:flutter/material.dart';

class Inputtext extends StatefulWidget {
  _InputtextState createState() => _InputtextState();
}

class _InputtextState extends State<Inputtext> {
  String teks = "";
  TextEditingController teksController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Column(
        children: <Widget>[
          TextField(
            controller: teksController,
            decoration: new InputDecoration(
              hintText: "Ketik disini"
            ),
            // onChanged: ,
            onSubmitted: (String str){
              setState((){
                teks=str+'\n'+teks;
                teksController.text='';
              });
            },
          ),
          new Text(teks, style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }
}