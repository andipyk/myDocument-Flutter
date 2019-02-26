import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  final Widget child;

  MyForm({Key key, this.child}) : super(key: key);

  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // Define the focus node. To manage the lifecycle, create the FocusNode in
  // the initState method, and clean it up in the dispose method
  static FocusNode myFocusNode;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    // Clean up the focus node when the Form is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          // The first text field will be focused as soon as the app starts
          TextField(
            autofocus: true,
          ),
          // The second text field will be focused when a user taps on the
          // FloatingActionButton
          TextField(
            focusNode: myFocusNode,
          ),
          RaisedButton(
            onPressed: () => FocusScope.of(context).requestFocus(myFocusNode),
            child: Text('Focus Second Text Field'),
          )
        ],
      ),
    );
  }
}
