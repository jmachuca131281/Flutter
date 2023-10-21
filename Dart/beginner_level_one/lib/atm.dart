import 'dart:io';

void atm() {
  String? a, b;
  double? withdrow, balance;

  List<double> values = [];

  stdout.writeln('Add withdrow');
  a = stdin.readLineSync();
  withdrow = double.parse(a!);

  stdout.writeln('Add Balance');
  b = stdin.readLineSync();
  balance = double.parse(b!);

  if ((withdrow >= 0 && withdrow <= 2000) &&
      (balance >= 0 && balance <= 2000)) {
    if ((withdrow % 5 == 0) && (withdrow >= balance)) {
      double r = (balance - withdrow) - 0.50;
      print('Saldo = $r');
    }else{
      print('Add number multiple of 5, saldo es $balance');
    }
    if(withdrow >= balance){
      print('Withdrow is mayour of valance, el saldo es $balance');
    }
  } else {
    print('Add valid value > 0 y <= 2000');
  }
}
