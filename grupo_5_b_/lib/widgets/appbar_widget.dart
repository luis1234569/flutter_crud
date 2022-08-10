import 'package:flutter/material.dart';


class CustomDropdown extends StatelessWidget {
  final String? valor;
  final String? texto;

  const CustomDropdown({super.key, this.valor, this.texto});

  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem(
      value: valor,
      child: Text(texto ?? 'no value')
    );
  }
}
