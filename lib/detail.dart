import 'package:flutter/material.dart';



class DetailScreen extends StatelessWidget {
  int testValue = 0;
  DetailScreen({Key key, @required this.testValue}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Column(
            children: <Widget>[
              Center(
                child: Hero(
                  tag: 'imageHero',
                  child:
                  Image.network(
                    'https://picsum.photos/250?image=9',
                  ),
                ),
              ),
              Center(
                child : Text ('Hello ${testValue * 10}')
              ),
              Padding(
                child : SizedBox(
                  width: 100,
                  height: 100,

                  child: Center(child:
                  RaisedButton(
                    color : Colors.lightGreenAccent,
                    onPressed: () {
                      Navigator.pop(context, 'Yep!');
                    },

                    child: Center(child: Text('EN')),
                  ),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              ),

            ]
        ),

        onTap: () {
          Navigator.pop(context);
        },

      ),
    );
  }
}