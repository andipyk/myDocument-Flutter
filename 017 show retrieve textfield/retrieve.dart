import 'package:flutter/material.dart';

class RetrieveText extends StatefulWidget {
  final Widget child;

  RetrieveText({Key key, this.child}) : super(key: key);

  _RetrieveTextState createState() => _RetrieveTextState();
}

class _RetrieveTextState extends State<RetrieveText> {

  // Create a text controller. We will use it to retrieve the current value
  // of the TextField!
  final myController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose    
    // Clean up the controller when the Widget is disposed
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: myController,
        ),
        RaisedButton(
        // When the user presses the button, show an alert dialog with the
        // text the user has typed into our text field.
          onPressed: () {
            return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                // Retrieve the text the user has typed in using our
                // TextEditingController
                  content: Text(myController.text),
                );
              }
            );
          },
          child: Row(
            children: <Widget>[
              Icon(Icons.text_fields),
              Text('Tampilkan')
            ],
          ),
        )
      ],
    );
  }
}