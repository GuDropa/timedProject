import 'package:TiMed/components/remedio_tile.dart';
import 'package:TiMed/routes/app_routes.dart';
import 'package:TiMed/data/dummy_remedios.dart';
import 'package:flutter/material.dart';
import 'package:TiMed/provider/remedios.dart';

class RemedioList extends StatefulWidget {
  @override
  _RemedioListState createState() => _RemedioListState();
}

class _RemedioListState extends State<RemedioList> {
  @override
  Widget build(BuildContext context) {
    final remedios = {...DUMMY_REMEDIOS};

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.REMEDIO_FORM);
            },
          )
        ],
        title: Text('Lista de Remedios'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => RemedioTile(remedios.values.elementAt(i)),
        itemCount: remedios.length,
      ),
    );
  }
}
