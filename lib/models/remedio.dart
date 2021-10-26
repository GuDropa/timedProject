import 'package:flutter/material.dart';

class Remedio {
  final String id;
  final String name;
  final TimeOfDay hour;
  const Remedio({
    required this.id,
    required this.name,
    required this.hour,
  });

  void put(Remedio remedio) {}
}