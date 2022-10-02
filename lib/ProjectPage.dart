import 'package:flutter/material.dart';
import 'package:myapp/footer.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プロジェクト1',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          children: [
            workSpace(),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}

class workSpace extends StatelessWidget {
  const workSpace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){

      },
      child: Text('ここにメッセージを入れていきます'),
    );
  }
}