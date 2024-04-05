import 'package:flutter/material.dart';
import 'package:hasachy/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController password = TextEditingController();

class _LoginState extends State<Login> {
  bool passenable = true;
  int size = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF8C95AD),
                  Color(0xFF5DB0C9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black26, width: 2)),
                width: double.infinity,
                height: 150.0,
                margin: EdgeInsets.all(50),
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: const Text(
                  "Bahtiýarow Atabek",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: TextField(
                  obscureText: passenable,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white, fontSize: size.toDouble()),
                  textAlign: TextAlign.center,
                  controller: password,
                  decoration: InputDecoration(
                      hintText: 'Paroly giriz',
                      hintStyle: TextStyle(fontSize: size.toDouble(), ),
                      filled: true,
                      fillColor: Color(0xFFB1C8CE),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      suffixIcon: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passenable) {
                                passenable = false;
                              } else {
                                passenable = true;
                              }
                            });
                          },
                          icon: Icon(passenable == true
                              ? Icons.remove_red_eye
                              : Icons.password_outlined, size: 27),
                          color: Colors.blueGrey,
                        ),
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(270, 60)),
                  onPressed: () {
                    if (password.text == "biznes" ||
                        password.text == "biznesmen") {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  child: Text(
                    'Giriş',
                    style: TextStyle(fontSize: size.toDouble()),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
