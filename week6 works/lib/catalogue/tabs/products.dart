import 'package:flutter/material.dart';
import 'package:week6_ui_examples/catalogue/tabs/cardProducts.dart';

class ProductsCatalogue extends StatelessWidget {
  const ProductsCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Card(
            child: SizedBox(
              // color: Colors.yellow,
              height: 190,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: SizedBox(
                        height: 50,
                        child: Image.asset(
                          'assets/images/foldedTshirt.jpeg',
                        )),
                    title: Row(
                      children: const [
                        Text("Couch Potato | Women...",
                            style:
                                TextStyle(fontFamily: 'poppins', fontSize: 15)),
                        SizedBox(
                          width: 35,
                        ),
                        Icon(Icons.more_vert_outlined),
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
                        const Text(
                          '₹799',
                          style: TextStyle(
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
                          style:
                              TextStyle(fontFamily: 'poppins', fontSize: 15)),
                    ],
                  )
                ],
              ),
            ),
          ),
          const CardProducts(
            titleText: 'Couch Potato|Woman...',
            rate: "₹799",
            ImageLink: 'assets/images/foldedTshirt2.jpg',
            imageHieght: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          const CardProducts(
            titleText: 'Mug | Explore                        ',
            rate: "₹399",
            ImageLink: 'assets/images/coffee-mugs.jpg',
            imageHieght: 55,
          ),
          const SizedBox(
            height: 5,
          ),
          const CardProducts(
            titleText: 'Combo Blahst 1 | Pack...    ',
            rate: "₹699",
            ImageLink: 'assets/images/comboBlast.jpg',
            imageHieght: 55,
          ),
          const SizedBox(
            height: 5,
          ),
          const CardProducts(
            titleText: 'Mug | Orchard                      ',
            rate: "₹449",
            ImageLink: 'assets/images/mug2.jpg',
            imageHieght: 55,
          ),
          const SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}
