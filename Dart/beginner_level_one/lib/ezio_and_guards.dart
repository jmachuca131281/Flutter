import 'dart:io';

void ezio_and_guards(){
  int? t, x, y;
  String? manipulate, numbersOfGuards;

  stdout.writeln('Add number of guards');
  numbersOfGuards = stdin.readLineSync();
  stdout.writeln('Add number of manupulate');
  manipulate = stdin.readLineSync();
  x = int.parse(numbersOfGuards!);
  y = int.parse(manipulate!);

  if(x >= y){
    print('yes');
  }else if (x <= y){
    print('No');
  }else if ( x == y){
    print('Yes');
  }
}