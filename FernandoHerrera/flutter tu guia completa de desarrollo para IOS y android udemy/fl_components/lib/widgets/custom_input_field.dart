import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;


  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      this.keyBoardType,
      this.obscureText = false,
      // Required, para que marque los errores donde se nesecitan y segundo recibirlos como argumentos.
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: 'José Machuca',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyBoardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // Si suffixIcon es igual a nul entonces (?) es null, en caso contrario (:) lo que recibimos.
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon), // Icon end.
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
