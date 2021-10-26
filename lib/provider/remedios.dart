import 'dart:math';

import 'package:TiMed/data/dummy_remedios.dart';
import 'package:TiMed/models/remedio.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

//ChangeNotifier é um observer
class Remedios with ChangeNotifier {
  final Map<String, Remedio> _items = {...DUMMY_REMEDIOS};

  List<Remedio> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
  Remedio byIndex(int i) {
   return _items.values.elementAt(i);
 }

 void put(Remedio remedio) {
   if(remedio == null) {
     return;
   }
// alterar
   if(remedio.id != null &&
    remedio.id.trim().isNotEmpty &&
     _items.containsKey(remedio.id)) {
     _items.update(remedio.id, (_) => Remedio(
       id: remedio.id,
       name: remedio.name,
       hour: remedio.hour,
       ),
     );
   } else {
     // adicionar
  final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      id, 
      () => Remedio(
      id: id,
      name: remedio.name,
      hour: remedio.hour,
      ),
    );
   }

  notifyListeners();
 }

 void remove(Remedio remedio) {
   if(remedio != null && remedio.id != null){
     _items.remove(remedio.id);
     notifyListeners();
   }
 }
}
