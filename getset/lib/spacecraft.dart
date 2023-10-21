
class Spacecraft{
  String? name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate){}

  Spacecraft.unlaunched(String name) : this(name, null);

  var voyager = Spacecraft("Voyager 2", DateTime(1981, 10, 5));

  void describe(){
    print("Spacecraft: $name");
    var launchDate = this.launchDate;
    if(launchDate != null){
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print("Launched: $launchYear ($years years ago)");
    }else{
      print("Unlounched");
    }
  }

  int multiply(int a, int b){
    return a * b;
  }
}