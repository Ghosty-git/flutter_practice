import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffD9A8FF),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 219),
            alignment: Alignment.center,
            child: const Text(
              "Вход",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 36, 18, 0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  hintText: "E-mail"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Color(0xff333333),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                  hintText: "Пароль"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                   BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 3),
                    color: Color(0xff743F8C)
                  ),
                ],
                color: const Color(0xff743F8C),
                borderRadius: BorderRadius.circular(50)),
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(122, 66, 121, 0),
            width: 132,
            height: 50,
            child: const Text(
              "Войти",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
