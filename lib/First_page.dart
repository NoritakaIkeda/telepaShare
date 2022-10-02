import 'package:flutter/material.dart';
import 'package:myapp/projects_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/Group1.png')),
          gradient: LinearGradient(
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            colors: [
              const Color(0xffb061ff),
              const Color(0xff6461FF),
            ],
            stops: const[
              0.0,
              1.0
            ],
            // image: DecorationImage(image: AssetImage('images/Group1.png')),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 700),
          child: Column(
            children: [
              Text('利用規約とプライバシーポリシーに\n同意してサインインする',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              Center(
                child: ElevatedButton(
                  child: const Text('今すぐはじめる'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProjectsPage(),
                          fullscreenDialog: true,),

                    );
                  },

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}