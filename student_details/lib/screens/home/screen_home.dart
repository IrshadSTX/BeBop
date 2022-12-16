import 'package:flutter/material.dart';
import 'package:student_details/screens/home/widgets/add_student_widget.dart';
import 'package:student_details/screens/home/widgets/list_student.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student List'), actions: [
        IconButton(
          onPressed: () {
            // showSearch(
            //   context: context,
            //   delegate: Search(),
            // );
          },
          icon: const Icon(Icons.search),
        ),
      ]),
      body: const SafeArea(
        child: ListStudentsWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 12, 101, 3),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddStudentsWidget(),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
