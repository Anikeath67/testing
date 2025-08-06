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
          selectionColor: Colors.black,
        ),
      ),
    );
  }
}
