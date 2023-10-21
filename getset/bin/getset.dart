import 'package:getset/getset.dart' as getset;
import 'package:getset/spacecraft.dart';

void main(List<String> arguments) {
  // print('Hello world: ${getset.calculate()}!');
  Spacecraft sc = Spacecraft("jose", DateTime(1977, 9, 0));
  sc.describe();

  var voyager = Spacecraft("Carajita 3", DateTime(2010, 09, 4));
  sc.describe();

}
