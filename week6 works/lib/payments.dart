import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                'Payments',
              ),
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.info_outline),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(17),
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                height: 200,
                width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '  Transaction Limit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        '   A free limit up to which you will recieve\n   the online payments directly in your bank',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      LinearPercentIndicator(
                        backgroundColor: Colors.grey[300],
                        progressColor: Colors.blue[900],
                        lineHeight: 6,
                        percent: 0.3,
                        barRadius: const Radius.circular(16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '   36,668 left out of ₹50,000',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Increase limit')),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Default Method',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                  Row(
                    children: const [
                      Text('Online Payments'),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Text('Bank Account'),
                      Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(color: Colors.grey[700]),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Payment Overview',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Text('Life Time'),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.4,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT ON HOLD',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹0',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'AMOUNT RECIEVED',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'Poppins'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹13,332',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey),
                      child: const Center(
                        child: Text(
                          'On hold',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins'),
                        ),
                      )),
                  Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue[900]),
                      child: const Center(
                        child: Text(
                          'Payouts(15)',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins'),
                        ),
                      )),
                  Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey),
                      child: const Center(
                        child: Text(
                          'Refunds',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Poppins'),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 60,
                        maxWidth: 60,
                      ),
                      child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage('assets/images/tshirt1.webp')),
                      ),
                    ),
                    title: const Text(
                      'Order #1688068',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Jul 12, 02:06 PM',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: SizedBox(
                      width: 83,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            '₹799',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                              Text(' Successful')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    '₹799 deposited for 5886020000038',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                  Divider(color: Colors.grey[700]),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight: 60,
                        maxWidth: 60,
                      ),
                      child: const SizedBox(
                        height: 50,
                        width: 50,
                        child: Image(
                            image: AssetImage('assets/images/coffee-mugs.jpg')),
                      ),
                    ),
                    title: const Text(
                      'Order #1457741',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Apr 26, 07:47 AM',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: SizedBox(
                      width: 83,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            '₹397.4',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.blue),
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.green,
                              ),
                              Text(' Successful')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    '₹397.4 deposited for 6886020000138',
                    style: TextStyle(
                        color: Colors.grey, fontStyle: FontStyle.italic),
                  ),
                  Divider(color: Colors.grey[700]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 60,
                          ),
                          child: const SizedBox(
                            height: 50,
                            width: 50,
                            child: Image(
                                image:
                                    AssetImage('assets/images/tshirt2.webp')),
                          ),
                        ),
                        title: const Text(
                          'Order #1408896',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Apr 11, 10:54 AM',
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: SizedBox(
                          width: 83,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '₹686.42',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  Text(' Successful')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        '₹686.42 deposited for 5886020000138',
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic),
                      ),
                      Divider(color: Colors.grey[700]),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 60,
                          ),
                          child: const SizedBox(
                            height: 50,
                            width: 50,
                            child: Image(
                                image:
                                    AssetImage('assets/images/tshirt3.webp')),
                          ),
                        ),
                        title: const Text(
                          'Order #1369633',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text(
                          'Apr 11, 11:29 AM',
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: SizedBox(
                          width: 83,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                '₹1123.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blue),
                              ),
                              Row(
                                children: const [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  Text(' Successful')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        '₹1123.5 deposited for 58860200000138',
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
