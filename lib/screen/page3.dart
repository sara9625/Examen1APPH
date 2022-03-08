import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi appBar"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Hola ; esta es la  Tercera pagina"),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'images/cebolla.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Menù principal"),
          )
        ],
      )),
    );
  }
}
