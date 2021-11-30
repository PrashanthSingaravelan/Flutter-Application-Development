import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'translated_page.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? selectedimage;
  String message='Hi';
  uploadImage() async {
    final request= http.MultipartRequest("POST", Uri.parse("http://10.0.2.2:9990/upload") );
    final headers={
      "Content-type":"multipart/form-data"
    };
    request.files.add(
        http.MultipartFile('image',
            selectedimage!.readAsBytes().asStream(),
            selectedimage!.lengthSync(),
            filename: selectedimage!.path.split("/").last)
    );
    request.headers.addAll(headers);
    final response= await request.send();
    http.Response res= await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    message= resJson['message'];
    setState(() {

    });
  }
  Future getImage() async {
    final pickedImage= await ImagePicker().getImage(source: ImageSource.gallery);
    selectedimage=File(pickedImage!.path);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            selectedimage == null
                ? Text("Select a Image")
                : Image.file(selectedimage!),
            TextButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                onPressed:(){
                  uploadImage();
                  Navigator.pushNamed(
                    context,
                    '/translate',
                    arguments: ScreenArguments(
                      'Translated',
                      message,),
                  );
                },
                icon: Icon(Icons.upload_file,color: Colors.white,),
                label: Text("Upload",
                    style: TextStyle(color: Colors.white,
                    )))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}