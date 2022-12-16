import 'package:flutter/material.dart';
import 'package:week6_ui_examples/Additional_information.dart';
import 'package:week6_ui_examples/Catalogue.dart';
import 'package:week6_ui_examples/Dukaan%20premium/Dukaan_Premium.dart';
import 'package:week6_ui_examples/Order%20Details.dart';
import 'package:week6_ui_examples/manage_store.dart';
import 'package:week6_ui_examples/payments.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const additional_information())));
                  },
                  child: const Text('Additional \ninformation')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const ManageStore())));
                  },
                  child: const Text('Manage Store')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const Payments())));
                  },
                  child: const Text('Payments')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((ctx) => const Order())));
                  },
                  child: const Text('Order Details')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const DukaanPremium())));
                  },
                  child: const Text('Dukaan Premium')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((ctx) => const Cataloque())));
                  },
                  child: const Text('Catalogue')),
            ],
          ),
        ),
      ),
    );
  }
}
