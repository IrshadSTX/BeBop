// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardProducts extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String ImageLink;
  final String titleText;
  final String rate;
  final double imageHieght;
  const CardProducts(
      {super.key,
      required this.titleText,
      required this.rate,
      // ignore: non_constant_identifier_names
      required this.ImageLink,
      required this.imageHieght});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        // color: Colors.yellow,
        height: 190,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading:
                  SizedBox(height: imageHieght, child: Image.asset(ImageLink)),
              title: Row(
                children: [
                  Text(titleText,
                      style:
                          const TextStyle(fontFamily: 'poppins', fontSize: 15)),
                  const SizedBox(
                    width: 35,
                  ),
                  const Icon(Icons.more_vert_outlined),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '1 piece',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    rate,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17),
                  ),
                  Row(
                    children: [
                      Text(
                        'In stock',
                        style: TextStyle(
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                      const SizedBox(
                        width: 136,
                      ),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 3,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("Share Product",
                    style: TextStyle(fontFamily: 'poppins', fontSize: 15)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
