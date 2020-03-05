import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Contador de Pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar!";

  void _changePeople(int delta) {
    setState(() {
    _people = _people + delta;

    if (_people < 0) {
      _infoText = "Ta doidao??";
    } else if (_people > 0 && _people < 10) {
      _infoText = "Pode entrar!";
    } else {
      _infoText = "Lotado porra !";
    }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Pessoas: $_people",
              style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                      onPressed: () {
                        _changePeople(1);
                        },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      )),
                ),
                new Padding(
                  padding: EdgeInsets.all(40.0),
                  child: new FlatButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      )),
                ),
              ],
            ),
            new Text(
              _infoText,
              style: new TextStyle(
                  color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30),
            )
          ],
        )
      ],
    );
  }
}


