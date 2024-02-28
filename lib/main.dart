import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Listview Rivas",
      theme: ThemeData(primarySwatch: Colors.green),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/xbox1.jpg",
    "assets/images/xbox2.jpg",
    "assets/images/xbox3.png",
    "assets/images/xbox4.png",
    "assets/images/xbox5.jpg",
    "assets/images/xbox6.png",
    "assets/images/xbox7.png",
    "assets/images/xbox8.jpg",
    "assets/images/xbox9.jpg",
    "assets/images/xbox10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Alonso Rivas"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("Xbox"),
              subtitle: Text("Xbox logos"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
