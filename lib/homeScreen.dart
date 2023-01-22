import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Border greenBorder =
      const Border(bottom: BorderSide(color: Colors.green, width: 3));
  Border greyBorder =
      Border(bottom: BorderSide(color: Colors.grey.shade400, width: 3));
  int fruitEffect = 0;
  int vegetableEffect = 0;

  //
  //
  // Image path

  String apple = "assets/images/apple.png";
  String banana = "assets/images/banana.png";
  String broccoli = "assets/images/broccoli.png";
  String carrot = "assets/images/carrot.png";
  String kiwi = "assets/images/kiwi.png";
  String orange = "assets/images/orange.png";
  String peppers = "assets/images/peppers.png";
  String strawberry = "assets/images/peppers.png";
  String watermelon = "assets/images/watermelon.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "GetX Concept",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.black),
                  ],
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: const Icon(Icons.shopping_cart, color: Colors.black),
              ),
            ),
          ],
          backgroundColor: Colors.grey.shade400,
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        fruitEffect = 0;
                        vegetableEffect = 0;
                        if (fruitEffect == 0) {
                          greyBorder = greenBorder;
                        } else {
                          greenBorder = greyBorder;
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        //border: Border(bottom: BorderSide(color: Colors.green,width: 3),),
                        border: greenBorder,
                        //color: Colors.white,
                      ),
                      child: const Text(
                        "Fruits",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        vegetableEffect = 1;
                        fruitEffect = 1;
                        if (vegetableEffect == 1) {
                          greyBorder = greenBorder;
                        } else {
                          greenBorder = greyBorder;
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: 125,
                      decoration: BoxDecoration(
                        //border: Border(bottom: BorderSide(color: Colors.green,width: 3),),
                        border: greyBorder,
                        //color: Colors.white,
                      ),
                      child: const Text(
                        "Vegetable",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      productBox(),
                      productBox(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      productBox(),
                      productBox(),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      productBox(),
                      productBox(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade400,
      ),
    );
  }

  Widget productBox() {
    return Container(
      height: 220,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite_border, color: Colors.green),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(apple),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Apple",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "US \$ 30",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 38,
                width: 43,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(10)),
                ),
                child: Icon(Icons.card_travel, color: Colors.white, size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
