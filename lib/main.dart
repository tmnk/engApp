import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MListState();
  }
}
//var theme = ThemeData(
//  RaisedButton :
//);
class MListState extends State<MyApp> {
  List data = [["Вода", "Земля", "Воздух", "Спина","Что обычно болит?", 3],["Нога", "Ухо", "Воздух", "Спина","Что не обычно болит?", 2],["Макароны", "Земля", "Воздух", "Огонь","Что обычно едят?",0]];
  var MCol = [Colors.blue,Colors.blue,Colors.blue,Colors.blue,Colors.blue];
  int _id = 4;
  int ansCount = 0;

  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    var giga = ["1", "2", "3", "4", "Вопрос"];
    return MaterialApp(
      title: title,

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("EngApp"),
        ),
        key: _scaffoldKey,
        body: ListView(
          children: <Widget>[
            ButtonTheme(
              minWidth: 16.0,
              height: 30.0,
              child: RaisedButton(
                onPressed: () => print("a"),
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Text(
                        'SORT BY',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
            width: 100,
            height: 100,
            child: Center(child: Text(
              "Hee"
            ))),
            RaisedButton(
              onPressed: () {

              },

              child: Center(child: Text('EN')),
            ),
            RaisedButton(
              onPressed: () {

              },
                child: Text('5'),
              color: Colors.green,
            ),
            RaisedButton(
              color: Colors.lightGreenAccent,
              onPressed: () {

              },

              child: Text('4'),
            ),
            RaisedButton(
              color: Colors.yellowAccent,
              onPressed: () {

              },

              child: Text('3'),
            ),
            RaisedButton(

              color: Colors.red,
              onPressed: () {

              },

              child: Text('2'),
            ),
          ],
        ),

      ),
    );
  }

}

