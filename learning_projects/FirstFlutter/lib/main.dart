import 'package:flutter/material.dart';

import 'home.dart';


main() {
  runApp(Root());
}
class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Tap'),
      ),
      body:Center(
        child: Text(
            "Page-1",
            style:TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context)=>Home())
          ); // of context--> current page || push -->next || pop --> remove
        },
      ),
    );
  }
}



