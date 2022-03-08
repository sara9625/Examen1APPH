// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:unidaduno/screen/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, color}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MI APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Interface());
  }
}

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Image.asset(
        'images/sandia.jpg',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),
      const TitleSection(),
      buttonSection,
      textSection,
      Container(
        padding: const EdgeInsets.only(left: 100.0, right: 100.0),
        child: RaisedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navega a la segunda ruta cuando se pulsa.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
        ),
      )
    ]));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text("Oeschinen Lake Campground",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Text("Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey[500])),
              Text("Josshiuaa, Bojwiiiw",
                  style: TextStyle(color: Colors.grey[500]))
            ],
          )),
          Icon(
            Icons.star,
            color: Colors.purple[500],
          ),
          Icon(
            Icons.star,
            color: Colors.purple[500],
          ),
          Icon(
            Icons.star_half_outlined,
            color: Colors.purple[500],
          ),
          Icon(
            Icons.star_outline,
            color: Colors.purple[500],
          ),
          const Text("40"),
        ],
      ),
    );
  }
}

Column _builButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}

// ignore: avoid_unnecessary_containers
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _builButtonColumn(Colors.blue, Icons.call, 'CALL'),
      _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    ],
  ),
);

Widget textSection = Container(
  padding:
      const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
  child: Column(
    children: [
      const Text(
        'Planta herbácea de tallos rastreros, hojas dentadas'
        'divididas en tres segmentos, flores blancas o'
        'amarillentas y fruto comestible',
        softWrap: true,
      ),
      Container(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          'images/fresa.jpg',
          width: 600,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {},
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}
