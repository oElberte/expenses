import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  const AdaptiveButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  // Decides if the button is cupertino or material
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            color: Theme.of(context).colorScheme.primary,
          )
        : ElevatedButton(
            child: Text(label),
            onPressed: onPressed,
          );
  }
}
