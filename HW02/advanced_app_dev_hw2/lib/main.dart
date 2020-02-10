import 'package:flutter/material.dart' ;

import 'dart:math' ;

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.orange,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int oneDiceNumber = 1 ;
  int twoDiceNumber = 2 ;
  int threeDiceNumber = 3 ;
  int fourDiceNumber = 4 ;
  int fiveDiceNumber = 5 ;





  void changeDiceFace()
  {
    setState(() {
      oneDiceNumber = Random().nextInt(6) + 1 ;
      twoDiceNumber = Random().nextInt(6) + 1 ;
      threeDiceNumber = Random().nextInt(6) + 1 ;
      fourDiceNumber = Random().nextInt(6) + 1 ;
      fiveDiceNumber = Random().nextInt(6) + 1 ;


    });
  }


  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace() ;

              },
              child: Image.asset('images/dice$oneDiceNumber.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace() ;

              },
              child: Image.asset('images/dice$twoDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace() ;

              },
              child: Image.asset('images/dice$threeDiceNumber.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace() ;

              },
              child: Image.asset('images/dice$fourDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDiceFace() ;

              },
              child: Image.asset('images/dice$fiveDiceNumber.png'),
            ),
          ),





        ],
      ),
    );
  }
  }





