import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/widgets/text_widgets/text_default.dart';

class HistoryTupUpScreen extends StatefulWidget {
  const HistoryTupUpScreen({Key? key}) : super(key: key);

  @override
  _HistoryTupUpScreenState createState() => _HistoryTupUpScreenState();
}

class _HistoryTupUpScreenState extends State<HistoryTupUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: TextNormal(
          title: "ປະຫວັດ",
          color: kTextBlackColor,
          underLine: false,
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextNormal(
                            title: "ເລກທີ່ຈ່າຍ",
                            color: kTextBlackColor,
                            underLine: false),
                        TextNormal(
                            title: "012345",
                            color: kTextBlackColor,
                            underLine: false),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextNormal(
                            title: "ຈຳນວນຄະແນນ",
                            color: kTextBlackColor,
                            underLine: false),
                        TextNormal(
                            title: "100,000 ຄະແນນ",
                            color: Colors.green.shade800,
                            underLine: false),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextNormal(
                            title: "ຊ່ອງທາງການຊຳລະ",
                            color: kTextBlackColor,
                            underLine: false),
                        TextNormal(
                            title: "ການຄ້າຕ່າງປະເທດ",
                            color: kTextBlackColor,
                            underLine: false),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextNormal(
                            title: "ຈຳນວນເງີນຈ່າຍຕົວຈິງ",
                            color: kTextBlackColor,
                            underLine: false),
                        TextNormal(
                            title: "100,000 ກີບ",
                            color: kTextBlackColor,
                            underLine: false),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextNormal(
                            title: "ວັນທີ່",
                            color: kTextBlackColor,
                            underLine: false),
                        TextNormal(
                            title: "08:00:00 24/08/2022",
                            color: kTextBlackColor,
                            underLine: false),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
