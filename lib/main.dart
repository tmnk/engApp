import 'package:flutter/material.dart';
import './detail.dart';
import './repeat.dart';
import './io.dart';
import './classes.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Returning Data',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo'),

      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
          child : SizedBox(
//            width: 100,
            height: 100,
            child: Center(child:
            RaisedButton(
              color : Colors.lightGreenAccent,
              onPressed: () {
                _navigateAndDisplaySelection(context);
              },
              child: Center(child: Text('Learn')),
            ),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        Padding(
          child : SizedBox(
//            width: 100,
            height: 100,
            child: Center(child:
            RaisedButton(
              color : Colors.cyan,
              onPressed: () {
                _navigateToRepeat(context);
              },
              child: Center(child: Text('Repeat')),
            ),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ],

    );
  }

  // A method that launches the SelectionScreen and awaits the result from
  // Navigator.pop!
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that will complete after we call
    // Navigator.pop on the Selection Screen!
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(testValue : 1)),
    );
    print(result.toString());
    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result!

  }
  _navigateToRepeat(BuildContext context) async {
    // Navigator.push returns a Future that will complete after we call
    // Navigator.pop on the Selection Screen!
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FlutterDemo(storage: CounterStorage(), testValue : 10)), ///////////////////////Стору надо послать
    );
    print(result.toString());
    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result!

  }
}
