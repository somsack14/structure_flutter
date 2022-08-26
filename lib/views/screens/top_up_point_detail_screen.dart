import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/screens/top_up_success_animation.dart';

class TopUpPointDetailScreen extends StatefulWidget {
  const TopUpPointDetailScreen({Key? key}) : super(key: key);

  @override
  _TopUpPointDetailScreenState createState() => _TopUpPointDetailScreenState();
}

class _TopUpPointDetailScreenState extends State<TopUpPointDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "ລາຍລະອຽດການຕື່ມ",
          style: TextStyle(
            color: kTextBlackColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "ລາຍລະອຽດ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ຈຳນວນຄະແນນທີ່ຕື່ມ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "100,000 ຄະແນນ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ຊ່ອງທາວການຊຳລະ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ການຄ້າຕ່າງປະເທດ",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(thickness: 1, height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.discount_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "ສ່ວນຫຼຸດ",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "- 10%",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                            left: -15,
                            bottom: 25,
                            child: Container(
                              height: 10,
                              width: 30.5,
                              child: CustomPaint(
                                painter: CustomContainer(),
                              ),
                            ),
                          ),
                          Positioned(
                            right: -20,
                            bottom: 20,
                            child: Container(
                              height: 10,
                              width: 20,
                              child: CustomPaint(
                                painter: CustomContainer(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ຈຳນວນເງິນຈ່າຍຕົວຈິງ",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "100,000 ກີບ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "ເລືອກຊ່ອງທາງການຊຳລະ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              'https://play-lh.googleusercontent.com/0fefMqcm2oUnw4Jo5gixiDrYwXIYUwsjXfaTQy-PNMt0ftkeCND_icGUR6OVmWl8-5Q',
                              width: 45,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "ທະນາຄານການຄ້າຕ່າງປະເທດ",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_right_sharp, color: Colors.grey)
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        width: double.maxFinite,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            primary: kButtonColor,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return TopUpSuccessAnimationScreen();
            }));
          },
          child: Text(
            "ຊຳລະ",
            style: TextStyle(
              color: kTextBlackColor,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi * 2,
      math.pi * 2,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
