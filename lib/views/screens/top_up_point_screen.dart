import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/screens/add_bank_receive_reward.dart';
import 'package:structure_flutter/views/screens/top_up_point_detail_screen.dart';
import 'package:structure_flutter/views/widgets/widget_push_page.dart';

import 'history_top_up.dart';

class TopUpPointScreen extends StatefulWidget {
  const TopUpPointScreen({Key? key}) : super(key: key);

  @override
  _TopUpPointScreenState createState() => _TopUpPointScreenState();
}

class _TopUpPointScreenState extends State<TopUpPointScreen> {
  RangeValues _currentRangeValues = const RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: Text(
          "ບໍລິການຕື່ມຄະແນນ",
          style: TextStyle(
            color: kTextBlackColor,
          ),
        ),
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
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "ເບີຂອງທ່ານ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "020 55555555",
                                style: TextStyle(color: Colors.green),
                              ),
                              Text(
                                "ຄະແນນ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Text(
                                "1.000.000 ຄະແນນ",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: kButtonColor,
                                borderRadius: BorderRadius.circular(50)),
                            width: 80,
                            height: 80,
                            child: GestureDetector(
                              onTap: () {
                                //showModalBottomSheet
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    backgroundColor: kBackgroundColor,
                                    context: context,
                                    builder: (_) {
                                      return Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "ໃສ່ຈຳນວນຄະແນນທີ່ຕ້ອງຕື່ມ",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 15,
                                                left: 15,
                                                right: 15,
                                              ),
                                              width: double.maxFinite,
                                              height: 350,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.all(15.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("ຈຳນວນຄະແນນ"),
                                                    SizedBox(height: 15),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFf2f6ff),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Icon(
                                                            Icons.remove,
                                                          ),
                                                        ),
                                                        Text("100.000"),
                                                        Container(
                                                          width: 30,
                                                          height: 30,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFf2f6ff),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Icon(
                                                            Icons.add,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 15),
                                                    RangeSlider(
                                                        values:
                                                            _currentRangeValues,
                                                        max: 10000,
                                                        activeColor:
                                                            Colors.yellow,
                                                        divisions: 100,
                                                        labels: RangeLabels(
                                                          _currentRangeValues
                                                              .start
                                                              .round()
                                                              .toString(),
                                                          _currentRangeValues
                                                              .end
                                                              .round()
                                                              .toString(),
                                                        ),
                                                        onChanged: (RangeValues
                                                            values) {
                                                          setState(() {
                                                            _currentRangeValues =
                                                                values;
                                                          });
                                                        }),
                                                    Text("ແນະນຳ"),
                                                    SizedBox(height: 15),
                                                    Expanded(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: GridView.builder(
                                                          physics:
                                                              NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          gridDelegate:
                                                              SliverGridDelegateWithMaxCrossAxisExtent(
                                                            maxCrossAxisExtent:
                                                                240,
                                                            mainAxisExtent: 40,
                                                            crossAxisSpacing:
                                                                10,
                                                            mainAxisSpacing: 10,
                                                          ),
                                                          itemCount: 20,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return Container(
                                                              height: 5,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(10),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                color:
                                                                    kLightBlue,
                                                              ),
                                                              child: Text(
                                                                  "5.000.000"),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 15, horizontal: 15),
                                              width: double.maxFinite,
                                              height: 50,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  primary: kButtonColor,
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return TopUpPointDetailScreen();
                                                  }));
                                                },
                                                child: Text(
                                                  "ດຳເນີນການ",
                                                  style: TextStyle(
                                                    color: kTextBlackColor,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.payment,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                  Text("ເຕີມຄະແນນ"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    pushPage(context, AddBankReceiveRewardScreen());
                  },
                  child: Text(
                    "ເພີ່ມບັນຊີຮັບເງີນລາງວັນ",
                    style: TextStyle(
                      color: kTextBlackColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  "ກະລຸນາເພີ່ມບັນຊີທະນາຄານຂອງທ່ານເພື່ອຮັບເງີນລາງວັນໃນກໍລະນີທ່ານຖືກລາງວັນຈາກການຊື້ຫວຍຜ່ານຄະແນນເພື່ອຄວາມສະດວກແລະວ່ອງໄວ.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
