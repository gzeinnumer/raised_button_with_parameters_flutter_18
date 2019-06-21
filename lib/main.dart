import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{
  String _value = 'Hello World';

  void _onPressed(String value){
    setState(() {
      _value= value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hay Zein'),),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                onPressed: ()=> _onPressed('Hello Zein'), child: new Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}