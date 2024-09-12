import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title:
                const Text('Travelling'),
            backgroundColor: Colors.blue,
          ),
          body: Column(children: [
            Stack(children: [
              Image.network(
                width: screenWidth,
                fit: BoxFit.fitWidth,
                  "https://vivaomundo.com.br/wp-content/uploads/2018/06/Grande-Barreira.jpg"),
                  const Positioned (
                    left: 10,
                    bottom: 10,
                    child: Column(
                      children: [
                        Text("Barreira de Corais", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text("AUSTRÁLIA",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
            ])
          ])),
    );
  }
}
