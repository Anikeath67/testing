import 'package:flutter/material.dart';
class Library extends StatelessWidget {
  const Library({super.key});

  @override
  SafeArea build(BuildContext context) {
    return SafeArea(child: const Text('Music Suno', style: TextStyle(fontSize: 50), selectionColor: Colors.black, ));
  }
}
