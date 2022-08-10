import 'package:flutter/material.dart';
import 'package:grupo_5_b_/themes/theme.dart';

class CustomInputField extends StatelessWidget {
  final bool? autofocus;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? icon;
  final IconData? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? initialText;
  final Map<String, dynamic> formValues;
  final String formProperty;

  const CustomInputField({
    Key? key,
    this.autofocus,
    this.keyboardType,
    this.obscureText,
    this.icon,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.helperText,
    this.initialText,
    required this.formValues,
    required this.formProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autofocus: autofocus ?? false,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          initialValue: initialText,
          textCapitalization: TextCapitalization.words,
          onChanged: (value) => formValues[formProperty] = value,
          validator: (value) {
            if (value == null) {
              return 'Obligatorio';
            }

            return null;
            // if (value.length < 3) return 'No puede tener menos de 2 caracteres';
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            helperText: helperText,
            suffixIcon: Icon(
              suffixIcon,
              color: AppTheme.primary,
            ),
            icon: Icon(
              icon,
              color: AppTheme.primary,
            ),
          ),
        ),
        const SizedBox(height: 9.7)
      ],
    );
  }
}
