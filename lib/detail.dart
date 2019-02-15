import 'package:flutter/material.dart';



class DetailScreen extends StatelessWidget {
  int testValue = 0;
  DetailScreen({Key key, @required this.testValue}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Column(
            children: <Widget>[ Center(
              child: Hero(
                tag: 'imageHero',
                child:
                Image.network(
                  'https://picsum.photos/250?image=9',
                ),
              ),
            ),
            Center(
                child : Text ('Hello ${testValue * 10}'))

            ]
        ),

        onTap: () {
          Navigator.pop(context);
        },

      ),
    );
  }
}