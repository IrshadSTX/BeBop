import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Order #1688068',
          style: TextStyle(fontFamily: 'Quicksand'),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'May 31, 05:42 PM',
                      style: TextStyle(fontFamily: 'Quicksand'),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.circle_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(fontFamily: 'Quicksand'),
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '1 ITEM',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.receipt_long_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        const Text(
                          'RECEIPT',
                          style: TextStyle(
                              fontFamily: 'Quicksand', color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 80,
                          minWidth: 50,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 193, 193, 193),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/tshirt2.webp',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Explore | Men | Navy Blue',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '1 piece',
                            style: TextStyle(
                                fontSize: 12, fontFamily: 'Quicksand'),
                          ),
                          const Text(
                            'Size: XL',
                            style: TextStyle(
                                fontSize: 14, fontFamily: 'Quicksand'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 217, 234, 248),
                                          border: Border.all(
                                            color: Colors.blue,
                                          )),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 18,
                                            fontFamily: 'Quicksand'),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'x ₹799',
                                    style: TextStyle(
                                        fontSize: 18, fontFamily: 'Quicksand'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: const Text(
                                  '₹799',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Item Total',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Quicksand'),
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Quicksand'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Delivery',
                            style: TextStyle(
                                fontSize: 16, fontFamily: 'Quicksand'),
                          ),
                          Text(
                            'FREE',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Quicksand',
                                color: Colors.green),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Grand Total',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '₹799',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.share_outlined,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            'SHARE',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Deepa',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                        Text(
                          '+91-7829000484',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            color: Color.fromARGB(255, 131, 131, 131),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.call),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.whatsapp_outlined,
                          size: 45,
                          color: Color.fromARGB(255, 65, 158, 68),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Address',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'),
                    ),
                    Text(
                      'D 1101 Chartered Beverly',
                      style: TextStyle(fontFamily: 'Quicksand'),
                    ),
                    Text(
                      'Hills, Subramanyapura P.O',
                      style: TextStyle(fontFamily: 'Quicksand'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'city',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Banglore',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                          ),
                        ),
                      ],
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Pincode',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '560061',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Payment',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'onilne',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          color: Color.fromARGB(255, 200, 220, 200),
                          child: const Center(
                            child: Text(
                              'PAID',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: 'Quicksand',
                                color: Color.fromARGB(255, 6, 180, 12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'ADDITIONAL INFORMATION',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'State',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Karnataka',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'greeniceaqua@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      child: Text(
                        "Share receipt",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
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
