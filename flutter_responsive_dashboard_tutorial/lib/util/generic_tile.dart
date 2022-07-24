import 'package:flutter/material.dart';

class GenericTile extends StatelessWidget {
  const GenericTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        color: Colors.grey[100],
        height: 80,
      ),
    );
  }
}
