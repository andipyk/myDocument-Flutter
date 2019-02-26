import 'package:flutter/material.dart';

class MyValidateForm extends StatefulWidget {
  final Widget child;

  MyValidateForm({Key key, this.child}) : super(key: key);

  _MyValidateFormState createState() => _MyValidateFormState();
}

class _MyValidateFormState extends State<MyValidateForm> {
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Form(
      // Build a Form widget using the _formKey we created above
      key: _formKey,
      // We'll build this out in the next steps!
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value){
              if (value.isEmpty) {
                return 'Value is empty !';
              }
            },
          ),
          RaisedButton(
            onPressed: (){
              if(_formKey.currentState.validate()){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data'),));
              }
            },
            child: Text('Sumbit'),
          )
        ],
      ) ,

    );
  }
}
