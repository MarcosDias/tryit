import 'package:flutter/material.dart';

class GenericBox extends StatelessWidget {
  const GenericBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        color: Colors.grey[600],
      ),
    );
  }
}
