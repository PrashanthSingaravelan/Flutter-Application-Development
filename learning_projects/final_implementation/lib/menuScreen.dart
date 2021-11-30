import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

import 'main.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key, required this.title}) : super(key: key);
  final title;
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:Center(
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Scan"),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    '/document',
                    arguments: ScreenArguments(
                        'PDF',
                        args.message));
              },
            ),
            SizedBox(width: 5),
            RaisedButton(
              child: Text("Tools"),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    '/home',
                    arguments: ScreenArguments(
                        'Tools',
                        args.message));
              },
            ),
          ],
        ),
      )
        );
  }
}
