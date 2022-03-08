import 'package:flutter/material.dart';
import 'package:unidaduno/screen/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi appBar"),
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
              "Hola! Esta es la segunda pagina y acontinuaciòn se muestra la imagen de una "
              "ZANAHORIA "),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'images/zanahoria.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: TextButton(
              child: const Text('Next'),
              onPressed: () {
                // Navega a la segunda ruta cuando se pulsa.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page3()),
                );
              },
            ),
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
