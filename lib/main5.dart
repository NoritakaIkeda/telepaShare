import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
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
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),


            ],
          ),
        ),
      ),
    );
  }
}

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
            NetworkImage('https://img.benesse-cms.jp/pet-cat/item/image/normal/3315437f-8cd9-4741-acc7-19c550e92bde.jpg?w=1120&h=1120&resize_type=cover&resize_mode=force'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                Text('こんぶ`flutter大学'),
                SizedBox(width: 8),
                Text('こんぶ`flutter大学'),
                ],
              ),
              SizedBox(height: 8),
              Text('最高でした'),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite_border)
              )
            ],
          ),
        ],
      ),
    );
  }
}


