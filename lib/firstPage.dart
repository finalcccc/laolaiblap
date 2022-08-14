// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'SecondPag.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String chooseItem = '';

class _HomePageState extends State<HomePage> {
  List<String> choose = [
    "1 kg",
    "2 kg",
    "3 kg",
    "4 kg",
    "5 kg",
    "6 kg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red.shade900,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'ສັ່ງເຮັດຄຳ',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 70,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(20),
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red.shade900,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 0),
                            color: Colors.black38,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'ຍອດຄຳທັງໝົດ',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Positioned(
                top: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ຂໍ້ມູນຄຳທີ່ຈະສັ່ງເຮັດ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text(
                          'ນ້ຳໜັກ:',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: SizedBox(
                          height: 50,
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນນ້ຳໜັກຄຳ ຕົວຢ່າງ: 15.000 g',
                              hintStyle:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'ສູງສຸດ: 15.000 g',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ຂະໜາດ:',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 5),
                        const Expanded(
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                hintText: 'ປ້ອນຂະໜາດ.',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'ຫົວໜ່ວຍ:',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              style: const TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                enabled: true,
                                hintText: 'ເລືອກ',
                                hintStyle: const TextStyle(
                                    fontSize: 16, color: Colors.grey),
                                suffix: IconButton(
                                  onPressed: () {
                                    showChoose(context, choose);
                                  },
                                  icon: const Icon(Icons.arrow_downward_sharp,
                                      size: 20, color: Colors.black),
                                ),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'ຂຽນຄຳອະທິບາຍ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.topLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'ຂຽນຄຳອະທິບາຍຮູບປະພັນຄຳ....',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'ອັບໂຫຼດຮູບພາບ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      'ຕົວຢ່າງ',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 130,
                      width: 140,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                          'https://staticimg.titan.co.in/Tanishq/Catalog/501145FLZAB02_1.jpg',
                        ),fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'ຮູບດ້ານໜ້າ*',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(224, 224, 224, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 130,
                      width: 140,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.grey,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 160),
                    const Expanded(
                      child: Text(
                        'ຕໍ່ໄປ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decorationColor: Color.fromRGBO(183, 28, 28, 1),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.white, size: 30),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<dynamic> showChoose(BuildContext context, List<String> choose) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 2,
              width: 120,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Choose",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 2,
                spacing: 2,
                children: choose
                    .map(
                      (item) => InkWell(
                        onTap: () {
                          if (chooseItem.isEmpty) {
                            chooseItem = item;
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
