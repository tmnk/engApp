import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import './io.dart';
import './classes.dart';

class FlutterDemo extends StatefulWidget {
  final CounterStorage storage;
  final int repeatNum;
  Collection jsonData;
  FlutterDemo({Key key, @required this.storage, @required this.repeatNum, @required this.jsonData}) : super(key: key);


  @override
  _FlutterDemoState createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  double _counter = 0;
  String _text = 'w';
//  Collection _data = new Collection(0, [], DateTime.now());
  @override
  void initState() {
    super.initState();
    widget.storage.readText().then((String value) {
      setState(() {
        _text = widget.jsonData.data[1].ru;
//        _data.jsonAddToData(widget.jsonData);
        _counter = widget.jsonData.data[1].avg();
      });

    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter += 1;
      _text += 's';
    });
    return widget.storage.writeText(_text);
    // Write the variable as a string to the file.

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading and Writing Files')),
      body: Center(
        child: Text(
          'Button tapped $_counter \n $_text \n  ',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}