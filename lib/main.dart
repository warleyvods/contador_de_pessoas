import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Contador de Pessoas",
    home: Stack(
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
              "Pessoas 0",
              style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                      onPressed: () {},
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      )),
                ),
                new Padding(
                  padding: EdgeInsets.all(40.0),
                  child: new FlatButton(
                      onPressed: () {},
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      )),
                ),
              ],
            ),
            new Text(
              "Pode entrar!",
              style: new TextStyle(
                  color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30),
            )
          ],
        )
      ],
    ),
  ));
}
