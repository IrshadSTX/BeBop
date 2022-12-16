// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:week6_ui_examples/Dukaan%20premium/CcircleAvatar.dart';

class DukaanPremium extends StatelessWidget {
  const DukaanPremium({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // automaticallyImplyLeading: false,
        title: const Text(
          'Dukaan Premium',
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.blue,
                  )),
                  Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 1)],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: 210,
                        width: 350,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              // color: Colors.red,
                              child: Center(
                                  child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const AvatarCircle(),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'dukaan',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 30),
                                              ),
                                              Text('®')
                                            ],
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Text(
                                              'PREMIUM',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue),
                                            ),
                                          )
                                        ])
                                  ],
                                ),
                              )),
                            ),
                            const Text(
                              'Get Dukaan Premium for just',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '₹4,999/year',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'All the advanced features for scaling your \nbusiness',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'poppins',
                                  color: Colors.grey),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Features',
                        style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
                      )),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: Icon(Icons.language),
                      ),
                    ),
                    title: Text('Custom domain name',
                        style: TextStyle(fontFamily: 'poppins')),
                    subtitle: Text(
                        'Get your own custom domain and build \nyour brand on the internet',
                        style: TextStyle(fontSize: 13, fontFamily: 'poppins')),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: Icon(Icons.verified_outlined),
                      ),
                    ),
                    title: Text('Verified seller badge',
                        style: TextStyle(fontFamily: 'poppins')),
                    subtitle: Text(
                        'GeGet green verified badge under your\nstore name and build trust',
                        style: TextStyle(fontSize: 13, fontFamily: 'poppins')),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: Icon(Icons.desktop_mac_rounded),
                      ),
                    ),
                    title: Text('Dukaan for PC',
                        style: TextStyle(fontFamily: 'poppins')),
                    subtitle: Text(
                        'Access all the exclusive premium  \nfeatures on Dukaan for PC',
                        style: TextStyle(fontSize: 13, fontFamily: 'poppins')),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        child: Icon(Icons.headset_mic),
                      ),
                    ),
                    title: Text('Priority support',
                        style: TextStyle(fontFamily: 'poppins')),
                    subtitle: Text(
                        'Get your question resolved with our \npriority customer support',
                        style: TextStyle(fontSize: 13, fontFamily: 'poppins')),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '  What is Dukaan Premuim?',
                    style: TextStyle(fontSize: 17, fontFamily: 'poppins'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/YoutubeVideo.png',
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Frequently asked questions',
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'What types of business can use Dukaan\npremium?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.minimize_outlined)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Dukoon caters to a wide variety of sellers. Be it a \nsmall grocery store or a big legacy brand - anyone\nwho wants to sell their products/services online - \nDukaan is the perfect platform for you ',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                        color: Color.fromARGB(255, 144, 142, 142)),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'What is your refund policy?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Will there be an automatic charge after the \npaid trail?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'What payment method do you offer?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'What happens when my free trial ends?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'What are the terms for the custom domain?',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'poppins',
                            color: Color.fromARGB(255, 114, 113, 113)),
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Need help? Get in touch',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'poppins',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Container(
                          width: 170,
                          decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(blurRadius: 1)],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  size: 30,
                                ),
                                Text(
                                  'Live chat',
                                  style: TextStyle(
                                      fontSize: 17, fontFamily: 'poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Container(
                          width: 170,
                          decoration: const BoxDecoration(
                              boxShadow: [BoxShadow(blurRadius: 1)],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.phone_outlined,
                                  size: 30,
                                ),
                                Text(
                                  'Phone Call',
                                  style: TextStyle(
                                      fontSize: 17, fontFamily: 'poppins'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Select Domain',
                  style: TextStyle(
                      fontSize: 17, fontFamily: 'poppins', color: Colors.blue),
                ),
                Container(
                  height: 50,
                  width: 170,
                  decoration: const BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 1)],
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(
                    child: Text(
                      'Get Premium',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'poppins',
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
