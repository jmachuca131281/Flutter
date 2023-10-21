
void main(List<String> arguments) {
  funcionesOpcionales("nombre", 34, opcionalPosicional: 3);
}

funcionesOpcionales(String nombre, int edad, {int opcionalPosicional}) {

  print("El nombre es: $nombre y la edad es $edad y el opcional es $opcionalPosicional");

}
