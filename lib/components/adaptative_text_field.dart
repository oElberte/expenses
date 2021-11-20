import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  final String label;
  final String placeholderIOS;
  final TextInputType? keyboardType;

  const AdaptativeTextField({
    Key? key,
    required this.controller,
    required this.onSubmitted,
    required this.label,
    required this.placeholderIOS,
    this.keyboardType,
  }) : super(key: key);

  // Decides if the text field is cupertino or material
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: controller,
              onSubmitted: onSubmitted,
              prefix: Text(
                label,
                textScaleFactor: 1.2,
              ),
              placeholder: placeholderIOS,
              keyboardType: keyboardType,
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              labelText: label,
            ),
          );
  }
}
