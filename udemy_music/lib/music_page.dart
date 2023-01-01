import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            rainbow(color: Colors.blue),
            rainbow(color: Colors.red),
            rainbow(color: Colors.amber),
            rainbow(color: Colors.orange),
            rainbow(color: Colors.red),
            rainbow(color: Color.fromARGB(255, 228, 0, 76)),
          ],
        ),
      ),
    );
  }
}

dynamic rainbow({
  Color? color,
}) {
  return Expanded(
    child: Container(
      color: color,
      child: TextButton(
        onPressed: () {},
        child: Text(''),
      ),
    ),
  );
}
