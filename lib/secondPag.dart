import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _indexColor = 0;
  int _selectedIndex = 0;
  final List<String> _category = ['ທັງໝົດ', 'nack', 'ເເຫວນ', 'ເພັດ'];
  List<IconData> iconMenus = [
    Icons.home,
    Icons.account_balance_wallet_rounded,
    Icons.notifications,
    Icons.person_rounded
  ];
  List<String> tapBarBottom = [
    'ໜ້າຫຼັກ',
    'ບັນຊີອອມຄຳ',
    'ການເເຈ້ງເຕືອນ',
    'ໂປຮຟາຍ'
  ];
  @override
  Widget build(BuildContext context) {
    List<String> widgetList = ['A', 'B', 'C'];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: ((value) {
                setState(() {
                  _selectedIndex = value;
                });
              }),
              controller: _pageController,
              children: [
                mainPage(context),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'ບັນຊີອອມຄຳ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'ການແຈ້ງເຕືອນ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'ໂປຮຟາຍ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          tapBarButton(context),
        ],
      ),
    );
  }

  Column mainPage(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 170,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(183, 28, 28, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                ),
                Column(
                  children: [
                    const SizedBox(height: 30),
                    Search(),
                    const SizedBox(height: 10),
                    listImages(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Buttom(Icons.shopping_bag, 'ສັ່ງເຮັດຄຳ'),
                        Buttom(Icons.book_outlined, 'ເບິ່ງລາຄາຄຳ'),
                        Buttom(Icons.location_on, 'ສາຂາໃກ້ຄຽງ'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'ປະເພດສິນຄ້າ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    category(),
                    // viewProduct(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container viewProduct(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.29,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (250 / 370),
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      // blurRadius: 2,
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: const Offset(0, 2))
                ],
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 300,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6)),
                          child: Image.network(
                            'https://inwfile.com/s-cv/xnerl3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 14,
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent.shade200,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 1.2,
                                  blurRadius: 8,
                                )
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(width: 5),
                              Text(
                                'ຍອດນິຍົມ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Icon(
                                Icons.favorite_outlined,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(width: 5)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 8,
                      ),
                      Text('ສາຍຄໍ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 8,
                      ),
                      Text('ID: N001'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 8,
                      ),
                      Text('7,750,000 ກີບ',
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('7.5 g ລາຍໄຂ່ມຸກ',
                          style: TextStyle(color: Colors.grey, fontSize: 11)),
                      Text('ຍັງ 15 ສະຕັອກ',
                          style: TextStyle(color: Colors.green, fontSize: 11)),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Container tapBarButton(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              width: 90,
              color:
                  _selectedIndex == index ? Colors.grey.shade200 : Colors.white,
              margin: EdgeInsets.all(2),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                      print(_pageController.initialPage);
                      _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut);
                    });
                  },
                  child: Container(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Icon(iconMenus[index],
                            color: _selectedIndex == index
                                ? Colors.red.shade900
                                : Colors.grey,
                            size: 30),
                        Text(
                          tapBarBottom[index].toString(),
                          style: TextStyle(
                              color: _selectedIndex == index
                                  ? Colors.red.shade900
                                  : Colors.grey),
                        )
                      ],
                    ),
                  )),
            );
          }),
    );
  }

  Widget category() {
    return Container(
        width: double.infinity,
        height: 40,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    setState(() {
                      _indexColor = index;
                    });
                  },
                  child: Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      gradient: _indexColor == index
                          ? const LinearGradient(colors: [
                              Color.fromRGBO(183, 28, 28, 1),
                              Color.fromRGBO(183, 28, 28, 1)
                            ])
                          : const LinearGradient(
                              colors: [
                                Colors.white,
                                Colors.white,
                              ],
                            ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      _category[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: _indexColor == index
                              ? Colors.white
                              : Colors.black),
                    )),
                  ));
            }));
  }

  Widget listImages() {
    return Container(
      height: 130,
      child: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => Container(
          margin: const EdgeInsets.only(left: 20, right: 10, top: 10),
          decoration: const BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://media.istockphoto.com/photos/thai-people-wearing-wedding-ring-at-wedding-day-picture-id972785050?s=612x612',
                fit: BoxFit.fitWidth,
              )),
        ),
        controller: PageController(viewportFraction: 0.97),
      ),
    );
  }

  Widget Buttom(IconData con, String text) {
    return InkWell(
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade300,
                  offset: const Offset(0, 0),
                  spreadRadius: 0.1)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(con, size: 30, color: Colors.red.shade900),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Search() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: 'ຄົ້ນຫາສິນຄ້າ...',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.pink, size: 30),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10)),
        ),
      ),
    );
  }
}
