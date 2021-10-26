import 'package:flutter/material.dart';
import 'package:TiMed/views/medRegister.dart';
import '../models/remedio.dart';
bool selected = true;
class RemedioTile extends StatefulWidget {
  final Remedio remedio;
  
  const RemedioTile(this.remedio);

  @override
  State<RemedioTile> createState() => _RemedioTileState();
}

class _RemedioTileState extends State<RemedioTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.remedio.name),
      // subtitle: Text("Current Time: ${remedio.hour.format(context)}"),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon( selected ? Icons.check_circle_outlined : Icons.check_circle_rounded),
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MedRegister(),
                  ),
                );
              },
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
