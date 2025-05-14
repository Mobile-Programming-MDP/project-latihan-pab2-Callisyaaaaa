import 'dart:convert';

import 'package:flutter/material.dart';

class FullImageScreen extends StatelessWidget {
  final String imagebased64;
  const FullImageScreen({
    super.key,
    required this.imagebased64,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: InteractiveViewer(
              child: Image.memory(
            base64Decode(imagebased64),
            fit: BoxFit.contain,
          )),
        ),
      ),
    );
  }
}
