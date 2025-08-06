import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  SafeArea build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          'search',
          style: TextStyle(fontSize: 50),
          selectionColor: const Color.from(alpha: 1, red: 0.153, green: 0.831, blue: 0.016),
        ),
      ),
    );
  }
}
