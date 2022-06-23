import 'package:flutter/material.dart';

class President {
  final int? id;
  final String? nombre;
  final String? apellido;
  final int? edad;
  final String? descripcion;

  President({this.id, this.nombre, this.apellido, this.edad, this.descripcion});
}

List<President> presidentsList = [
  President(
      id: 1,
      nombre: "Gustavo",
      apellido: "Petro",
      edad: 62,
      descripcion: "Esta loco"
  ),
  President(
      id: 2,
      nombre: "Rodolfo",
      apellido: "Hernandez",
      edad: 77,
      descripcion: "El berraco loco"
  ),
];
