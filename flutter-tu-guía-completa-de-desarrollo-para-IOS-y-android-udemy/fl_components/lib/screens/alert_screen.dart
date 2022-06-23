import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void displayDialog(BuildContext context) {
    // print('Mostrando en terminal');
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(onPressed: ()=> Navigator.pop(context), child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //! Tolo lo que se escriba aqui sobreescribe el app_them configuration
          //  style: ElevatedButton.styleFrom(
          //    primary: Colors.indigo,
          //    shape: const StadiumBorder(),
          //    elevation: 0
          //  ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          // onPressed: null // Desabilitar la función
          onPressed: () => displayDialog(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context); // Regresa a la última posición.
        },
      ),
    );
  }
}
