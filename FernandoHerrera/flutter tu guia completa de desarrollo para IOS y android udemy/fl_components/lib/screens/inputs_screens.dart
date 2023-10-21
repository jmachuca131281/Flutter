import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'José',
      'last_name': 'Machuca abreo',
      'email': 'jmachuca@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperty: 'firt_name', formValues: formValues),
                const SizedBox( height: 30,),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox( height: 30,),
                CustomInputField(labelText: 'Email', hintText: 'Email del usuario', keyBoardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox( height: 30,),
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox( height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const[
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),


                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    // Symbol "!" indicate that recive a null.
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                    }
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
