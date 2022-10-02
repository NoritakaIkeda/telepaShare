import 'package:flutter/material.dart';
import 'package:myapp/ProjectPage.dart';
import 'package:myapp/footer.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), //角の丸み
          ),
          child: IconButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                )
              )
            ),
            icon: Image.network(
              'https://img.benesse-cms.jp/pet-cat/item/image/normal/3315437f-8cd9-4741-acc7-19c550e92bde.jpg?w=1120&h=1120&resize_type=cover&resize_mode=force',
              width: 32, // 表示したいサイズを指定
              height: 32,
            ),
            onPressed: (){},/* タップした時の処理 */
          ),
        ),
        title: Text('株式会社TelepaShare',
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            project(),
            project(),
            project(),
            project(),
          ],
        ),

      ),
      bottomNavigationBar: Footer(),
    );
  }
}

class project extends StatelessWidget {
  const project({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        Navigator.push(
          context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => ProjectPage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeUpwardsPageTransitionsBuilder()
                    .buildTransitions(
                    MaterialPageRoute(builder: (context)=>ProjectPage()),
                    context,
                    animation,
                    secondaryAnimation,
                    child
                );
              },
            )
        );
      },
      child: Text('プロジェクト1'),
    );
  }
}