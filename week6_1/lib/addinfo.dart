import 'package:flutter/material.dart';

class AddInfo extends StatelessWidget {
  const AddInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Additional Information'),
      ),
      body: Column(
        children: [
          ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ListTile(
                leading: Icon(
                  Icons.share_outlined,
                  size: 40,
                ),
                title: Text('Share Dukaan App'),
                trailing: Icon(
                  Icons.next_plan,
                  size: 40,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.language_outlined,
                  size: 40,
                ),
                title: Text('Change Language'),
                trailing: Icon(
                  Icons.next_plan,
                  size: 40,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.whatsapp_outlined,
                  size: 40,
                ),
                title: Text('Whatsapp Chat Support'),
                trailing: Icon(
                  Icons.toggle_on_sharp,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.share_outlined,
                  size: 40,
                ),
                title: Text('Privacy Policy'),
              ),
              const ListTile(
                leading: Icon(
                  Icons.star_border_outlined,
                  size: 40,
                ),
                title: Text('Rate Us'),
              ),
              const ListTile(
                leading: Icon(
                  Icons.exit_to_app_outlined,
                  size: 40,
                ),
                title: Text('Sign Out'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
