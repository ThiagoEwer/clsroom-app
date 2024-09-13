import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title:
                const Text('Travelling'),
            backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(children: [
                Image.network(
                  width: screenWidth,
                  fit: BoxFit.fitWidth,
                    "https://vivaomundo.com.br/wp-content/uploads/2018/06/Grande-Barreira.jpg"),
                    const Positioned (
                      left: 10,
                      bottom: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Barreira de Corais", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          Text("AUSTRÁLIA",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: ()=>{}, icon: const Column(
                    children: [
                      Icon(Icons.favorite_border),
                      Text("Favoritar")
                    ],
                  ),),
                  IconButton(onPressed: ()=>{}, icon: const Column(
                    children: [
                      Icon(Icons.add),
                      Text("Quero Ir")
                    ],
                  ),),
                  IconButton(onPressed: ()=>{}, icon: const Column(
                    children: [
                      Icon(Icons.share),
                      Text("Compartilhar")
                    ],
                  ),),
                ],
              )
            ]),
          )),
    );
  }
}
