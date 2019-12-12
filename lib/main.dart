import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() {
  // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NO - Newspaper Oficial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
        fontFamily: 'Roboto',
      ),
      home: MyHomePage(title: 'NO - Newspaper Oficial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.height * 4,
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF226CB7),
                    Color(0xFF1C1452),
                  ],
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(120))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.description, size: 65, color: Colors.white),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "NO",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                  ),
                ),
                Text(
                  'Newpaper Oficial',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Roboto',
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton(
            color: Color(0xFF226CB7),
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Color(0xFF1C1452),
            onPressed: () => {},
            child: Row(
              children: <Widget>[
                Icon(Icons.person),
                Text("Usuário"),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          FlatButton(
            color: Color(0xFF1C1452),
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Color(0xFF226CB7),
            onPressed: () => {},
            child: Row(
              children: <Widget>[
                Icon(Icons.supervisor_account),
                Text("Administrador"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
