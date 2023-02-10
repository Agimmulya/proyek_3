import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormPemesanan extends StatelessWidget {
  static const routeName = '/form-pemesanan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Form pemesanan"),
      ),
      body: new Container(
        margin: EdgeInsets.all(10),
        padding: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Nama lengkap",
                  labelText: "Nama lengkap",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12))),
            ),
            SizedBox(
              width: 10,
              height: 10,
            ),
            new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(12))),
            )
          ],
        ),
      ),
    );
  }
}
