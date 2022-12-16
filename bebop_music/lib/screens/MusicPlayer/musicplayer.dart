import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 57, 4, 97),
        centerTitle: true,
        title: Text('PLAYING NOW'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromARGB(255, 5, 3, 69),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/images/headset.png'),
                  child: Padding(
                    padding: EdgeInsets.all(8), // Border radius
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Music is life',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Jimmy Carter',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
