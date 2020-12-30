import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(20, 30, 40, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(20, 30, 40, 1.0),
          shadowColor: Colors.white,
          title: Center(
            child: Text(
              "Login Page",
              style: TextStyle(
                color: Color.fromRGBO(255, 200, 0, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'GrandHotel',
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  wordSpacing: 10,
                  letterSpacing: 5,
                  color: Color.fromRGBO(255, 200, 0, 1.0),
                  fontFamily: 'Tangerine',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/kyar.png",
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromRGBO(255, 200, 0, 1.0),
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'ဒီမှာ Username ထည့်ပါ 👈',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 255, 255, 0.5),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Color.fromRGBO(0, 255, 255, 1.0),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Color.fromRGBO(255, 200, 0, 1.0),
                  fontWeight: FontWeight.bold,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'ဒီမှာ Password ထည့်ပါ 👈',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(0, 255, 255, 0.5),
                  ),
                  icon: Icon(
                    Icons.lock,
                    color: Color.fromRGBO(0, 255, 255, 1.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Login(),
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void audioChange(int change) {
    final player = AudioCache();
    player.play('audio$change.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          shape: Border.all(style: BorderStyle.solid, color: Colors.amber[500]),
          splashColor: Colors.white,
          textColor: Colors.amber[500],
          color: Color.fromRGBO(0, 0, 0, 0.3),
          onPressed: () {
            audioChange(2);
          },
          child: Text("Login"),
        ),
        SizedBox(
          width: 25,
        ),
        FlatButton(
          shape: Border.all(style: BorderStyle.solid, color: Colors.amber[500]),
          splashColor: Colors.white,
          textColor: Colors.amber[500],
          color: Color.fromRGBO(0, 0, 0, 0.3),
          onPressed: () {
            audioChange(1);
          },
          child: Text("Register"),
        ),
      ],
    );
  }
}
