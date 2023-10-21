import 'dart:io';

void volumeControl() {
  int? t, a, b;
  String? firstLine, x, y;

  stdout.writeln('Add number of cases');
  firstLine = stdin.readLineSync();
  t = int.parse(firstLine!);

  for (int i = 1; i <= t; i++) {
    stdout.writeln('Add first value');
    x = stdin.readLineSync();
    a = int.parse(x!);
    stdout.writeln('Add second value');
    y = stdin.readLineSync();
    b = int.parse(y!);

    if (a > b) stdout.writeln(a.abs() - b.abs());
    if (a < b) stdout.writeln(b.abs() - a.abs());
  }
}
