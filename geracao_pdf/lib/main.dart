import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RelatoriosList(),
    );
  }
}

class RelatoriosList extends StatefulWidget {

  @override
  _RelatoriosListState createState() => _RelatoriosListState();
}

class _RelatoriosListState extends State<RelatoriosList> {
  @override
  Widget build(BuildContext context) {
    final String tituloPagina = 'Relatórios';
    final List tituloList = [
      ''
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(tituloPagina),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50.0),
            child: InkWell(
              child: ListTile(
                leading: Icon(Icons.photo_album),
                title: Text(
                  tituloList[0],
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              onTap: () {}
            )
          )
        ],
      )
    );
  }
}
