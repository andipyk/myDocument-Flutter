import 'package:flutter/material.dart';

class HandleTextField extends StatefulWidget {
  final Widget child;

  HandleTextField({Key key, this.child}) : super(key: key);

  _HandleTextFieldState createState() => _HandleTextFieldState();
}

class _HandleTextFieldState extends State<HandleTextField> {

  // Create a text controller. We will use it to retrieve the current value
  // of the TextField!
  
  final myController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Start listening to changes
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // Clean up the controller when the Widget is removed from the Widget tree
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // We will fill this out in the next step!
    return TextField(
      controller: myController,
    );
  }

  _printLatestValue(){
    print("Second text field: ${myController.text}");
  }
}