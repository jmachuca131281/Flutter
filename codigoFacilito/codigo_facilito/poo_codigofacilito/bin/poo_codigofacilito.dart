void main(List<String> arguments) {
  Alumno maria = Alumno();
  maria.setNombre = "Roberta";
  maria.setCalificaciones = [1, 2, 3, 4, 5, 6];
  print(maria.getCalificaciones);
  print(maria.getNombre);
  maria.obtenerPromedio();

  Profesor profesor = Profesor();
  profesor.setNombre = "Peter";
  profesor.setRfc = "jañslk4sasd423";
  profesor.tieneRfc();

}

class Escuela{
  bienvenida(){

  }
}

abstract class Persona implements Escuela {
  String _nombre = "";
  String _apellido = "";
  int _edad = 0;
  String _telefono = "";

  get getNombre => this._nombre;
  set setNombre(String nombre) => this._nombre = nombre;
}

class Alumno extends Persona {
  List<double> _calificaciones = const [];

  get getCalificaciones => this._calificaciones;
  set setCalificaciones(List<double> c) => this._calificaciones = c;

  obtenerPromedio() {
    bienvenida();
    print("El promedio de${this._nombre} es de: ${_calcularPromedio()}");
  }

  _calcularPromedio() {
    return _calificaciones.reduce((valor, elemento) => valor + elemento) /
        this._calificaciones.length;
  }

  @override
  bienvenida() {
    print("Bienvenido ${this._nombre}");
  }
}

class Profesor extends Persona with Validaciones {
  String _rfc = "";

  get getRfc => this._rfc;
  set setRfc(String rfc) => this._rfc = rfc;

  tieneRfc() {
    bienvenida();
    if (_rfc.isNotEmpty) {
      print("El profesor $_nombre tiene rfc: $_rfc");
    } else {
      print("No tiene rfc");
    }
      
    validarRFCHomoclave(this._rfc);
    
  }

  @override
  bienvenida() {
    print("Bienvenido ${this._nombre}");
  }
}

mixin Validaciones{
  validarRFCHomoclave(String rfc){
    print((rfc.length>10)? "Rfc con HomoClave" : "Rfc sin homoclaver");
  }
}

// Ejemplo atributos posicional
//Alumno(this.nombre, this.apellido, this.edad, this.telefono,
//    this.calificaciones) {}

// Ejemplo atributos opcionales con nombre
// Alumno(
//     {this.nombre = "",
//     this.apellido = "",
//     this.edad = 0,
//     this.telefono = "",
//     this.calificaciones = const []});

// Con los métodos privados nos permite hacer la encapsulación.
// Con la encapsulación podemos restringir el acceso a métodos que no deseamos
// exponer en otros archivos y de esta forma se asegura la integridad de los
// objetos

// Endar solo se tiene dos tipo de modificadores de acceso. Públicos y privados.
// Por default los atributos y métodos son públicos en Dart.


// Se declaran las clases abstractas para que no puedan se accedidas
// poro estas si comparten sus atributos y métodos por medio de la herencia.
// Persona p = Persona(); Esta es la prueba.

// Interface es una estructura o sintasis de programación que permite a la
// computador complir siertas propiedades de una clase.
// Todas la clases definen implicitamente una interface por lo tante podemos
// implementar cualquier clase sin necesidad de la palabra reservada interface
// Las intefaces es la manera de describir que debe hacer una clase sin
// especificar como hacerlo.
// Implement palabra recerbada para las interfaces.


// Mixin, formas de reutilizar código en multiples jerarquias de clases.
// En las clases se agrega la palabra reservada "whith" par aimplementar el mixin