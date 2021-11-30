import 'dart:convert';

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;


class TranslatedScreen extends StatefulWidget {
  const TranslatedScreen({Key? key,}) : super(key: key);

  @override
  _TranslatedScreenState createState() => _TranslatedScreenState();
}

class _TranslatedScreenState extends State<TranslatedScreen> {

  getTranslate() async {
    String url='http://10.0.2.2:9990/translate?query=hello';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      var ans = jsonResponse['translatedtxt'];
      print('Number of books about http: $ans.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: SelectableText(args.message,
          showCursor: true,
          toolbarOptions: ToolbarOptions(
              copy: true,
              selectAll: true,
              cut: false,
              paste: false
          ),
          style:TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pop(context);
      //   },
      //   child: const Text('Go back!'),
      // ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
        visible: true,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            label: 'Translate',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {print('pressed1');
            getTranslate();
            // getTranslate(url+args.message);
            print('prssed2');},
          ),
          SpeedDialChild(
            child: Icon(Icons.brush),
            backgroundColor: Colors.blue,
            label: 'Pronounce',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              Navigator.pushNamed(
                  context,
                  '/audio',
                  arguments: ScreenArguments(
                      'Audio',
                      args.message));
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.keyboard_voice),
            backgroundColor: Colors.green,
            label: 'Third',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
        ],
      ),
    );
  }
}

