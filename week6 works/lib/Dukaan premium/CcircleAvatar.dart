// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      child: CircleAvatar(
        radius: 16,
        child: CircleAvatar(
          radius: 25,
          child: Image.asset(
            'assets/images/dukaan.png',
          ),
        ),
      ),
    );
  }
}
