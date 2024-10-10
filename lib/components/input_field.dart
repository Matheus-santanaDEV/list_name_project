import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const InputField({super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: 380,
                child: TextFormField(
                  controller: controller,
                  decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    label: Text(labelText),
                  ),
                ),
              ),
            );
  }
}