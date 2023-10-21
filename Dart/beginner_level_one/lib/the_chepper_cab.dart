import 'dart:io';

void theChipperCab() {
  int? t, x, y;
  String? firstLine, firsCabService, secondCabService;

  stdout.writeln('Add the number test cases:');
  firstLine = stdin.readLineSync();
  t = int.parse(firstLine!);

  for (int i = 1; i <= t; i++) {
    stdout.writeln('Add first cab services:');
    firsCabService = stdin.readLineSync();
    x = int.parse(firsCabService!);
    stdout.writeln('Add second cab Service:');
    secondCabService = stdin.readLineSync();
    y = int.parse(secondCabService!);

    if (x.compareTo(y) > 0) {
      stdout.writeln('First');
    } else if (x.compareTo(y) < 0) {
      stdout.writeln('Second');
    } else if(x.compareTo(y) == 0) {
      stdout.writeln('ANY');
    }
  }
}
