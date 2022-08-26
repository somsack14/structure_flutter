import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';

class AddBankReceiveRewardScreen extends StatefulWidget {
  const AddBankReceiveRewardScreen({Key? key}) : super(key: key);

  @override
  _AddBankReceiveRewardScreenState createState() =>
      _AddBankReceiveRewardScreenState();
}

class _AddBankReceiveRewardScreenState
    extends State<AddBankReceiveRewardScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController bankAccNoController = TextEditingController();

  String? _selectedBank;
  final List<String> _bankValues = [
    "Bcel",
    "Lao Development Bank",
    "Lao-Viet Bank",
    "Lao China Bank"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "ເພີ່ມບັນຊີຮັບເງິນລາງວັນ",
          style: TextStyle(fontSize: 20, color: kTextBlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
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
                    const Text(
                      "ຂໍ້ມູນບັນຊີຂອງທ່ານ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: kLightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: _selectedBank,
                          isExpanded: true,
                          hint: Text("ເລືອກທະນາຄານ"),
                          items: _bankValues.map((
                            value,
                          ) {
                            return DropdownMenuItem(
                              value: value,
                              child: Row(
                                children: [
                                  Image.network(
                                    'https://play-lh.googleusercontent.com/0fefMqcm2oUnw4Jo5gixiDrYwXIYUwsjXfaTQy-PNMt0ftkeCND_icGUR6OVmWl8-5Q',
                                    width: 45,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    value,
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              _selectedBank = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: kLightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: fullNameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          fillColor: kLightBlue,
                          focusedBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 10, right: 15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          label: const Text("ຊື່ ແລະ ນາມສະກຸນ"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: kLightBlue,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: bankAccNoController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: kLightBlue,
                          contentPadding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 10, right: 15),
                          focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          label: const Text(
                            "ເລກບັນຊີ",
                          ),
                        ),
                      ),
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
                  Navigator.of(context).pop();
                },
                child: Text(
                  "ເພີ່ມບັນຊີ",
                  style: TextStyle(
                    color: kTextBlackColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
