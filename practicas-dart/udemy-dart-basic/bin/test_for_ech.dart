import 'dart:async';
import 'dart:io';

import 'package:test_for_ech/test_for_ech.dart' as test_for_ech;

void main(List<String> arguments) {
  // List<String> lista = ['José', 'Aura', 'Jenny', 'Sarah'];

  // lista.forEach((nombres) {
  //   print(nombres);
  // });

  // sayHello('Alejandra');
  // print('La edad es ${yearOld(5)}');

  // print(imprimeValor(3.4));
  // sayHellos(2, 'margarucha');

  // download('texto', true);

  // int r = squartFeet(l: 10, w: 22);
  // print(r);

  // download('myFile', port: 34);

  // () {
  //   print('hallo');
  // };

  // List<String> people = ['nombres1', 'nombres2', 'nombres3', 'nombres4'];

  // people.forEach(print);

  // print("----------- forEch ----------");
  // people.forEach((String nombre) {
  //   print(nombre);
  // });

  // people.where( (String name) {
  //   switch (name) {
  //     case 'nombres1':
  //       return true;
  //     case 'nombres2':
  //       return false;
  //     case 'nombres3':
  //       return false;
  //   }
  // }).forEach(print);

  // int? age;
  // int? dogYears = 10;
  // print(age! * dogYears);

  try {
    int? age;
    int? dogYears = 10;
    print(age! * dogYears);
  } on NoSuchMethodError {
    print('Conchale no puede estar pasando de nuevo');
  } catch (e) {
    print('Tenemos un error: ${e.toString()}');
  }
}

// void sayHello(String nombre) {
//   print(nombre);
// }

// int yearOld(int age) {
//   return age * 7;
// }

// double imprimeValor([double valiu = 0.0]) {
//   return valiu * 2;
// }

// void sayHellos(int v, [String name = '']) {
//   if (name.isEmpty) {
//     name = name.padLeft(name.length + 1);
//   }
//   print(name.padLeft(5, '>>'));
//   print('Hello ${name}');
// }

// void download(String file, [bool open = false]) {
//   print('Downloading ${file}');
//   if (open) print('Opening ${file}');
// }

// int l = 0;
// int w = 0;
// int squartFeet({int? w, int? l}) {
//   return w! * l!;
// }

// void download(String file, {int port = 80}) {
//   print('Download $file on port $port');
// }


