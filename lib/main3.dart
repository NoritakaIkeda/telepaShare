import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '昆布',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              FirstPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('プロジェクト一覧'),
      // ),
      body: Center(
        child: TextButton(
          onPressed: (){

          },
          child: Text('はじめる'),
        ),

      ),
    );
  }
}
