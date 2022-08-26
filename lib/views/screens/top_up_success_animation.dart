import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/widgets/widget_push_page.dart';

import 'history_top_up.dart';

class TopUpSuccessAnimationScreen extends StatefulWidget {
  const TopUpSuccessAnimationScreen({Key? key}) : super(key: key);

  @override
  _TopUpSuccessAnimationScreenState createState() =>
      _TopUpSuccessAnimationScreenState();
}

class _TopUpSuccessAnimationScreenState
    extends State<TopUpSuccessAnimationScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () {
              pushPage(context, HistoryTupUpScreen());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "ປະຫວັດ",
                    style: TextStyle(color: kTextBlackColor),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.history,
                    color: kTextBlackColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "ເຕີມຄະແນນສຳເລັດ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50, bottom: 50),
                      child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_0jomt6wm.json',
                        width: 155,
                        height: 155,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "ຖ້າລູກຄ້າຕ້ອງການຂໍ້ມູນເພີ່ມຕື່ມສາມາດໂທສອບຖາມທີ່ໝາຍເລກ 1448.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kButtonColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "ກັບສູ່ໜ້າຫຼັກ",
                    style: TextStyle(color: kTextBlackColor, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
