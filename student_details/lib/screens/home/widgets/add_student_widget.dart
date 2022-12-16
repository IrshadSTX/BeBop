import 'dart:io';

import 'package:flutter/material.dart';

class AddStudentsWidget extends StatefulWidget {
  const AddStudentsWidget({super.key});

  @override
  State<AddStudentsWidget> createState() => _AddStudentWidgetState();
}

class _AddStudentWidgetState extends State<AddStudentsWidget> {
  final _nameController = TextEditingController();
  var _ageController = TextEditingController();
  final _mobileController = TextEditingController();
  final _nationController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool imageAlert = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      'Add Student Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/dp1.jpg'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    onPressed: () {},
                    child: const Text('Browse Your Image'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required Name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _ageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Age',
                      labelText: 'Age',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required Age';
                      } else if (value.length > 4) {
                        return 'Enter valid Age';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _mobileController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your mobile number',
                      labelText: 'Mobile',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required Mobile number';
                      } else if (value.length != 10) {
                        return 'Require valid Phone Number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _nationController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Natianality',
                      labelText: 'Nationality',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required Nationality';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        onAddStudentButtonClicked();
                        Navigator.of(context).pop();
                      } else {
                        imageAlert = true;
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('Sign up'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    final mobile = _mobileController.text.trim();
    final nation = _nationController.text.trim();

    if (name.isEmpty || age.isEmpty || mobile.isEmpty || nation.isEmpty) {
      return;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Student Added successfully"),
        ),
      );
    }

    stdout.write('$name $age $mobile $nation');

    // final student = StudentModel(
    //   name: name,
    //   age: age,
    //   mobile: mobile,
    //   nation: nation,
    // );
  }
}
