import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/modules/nft_bored_ape/screens/home_nft_bored_ape.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreensState createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List listMenu = [
    {
      "imagePath": "assets/images/nft_bored_ape/1.png",
      "title": "NFT Bored Ape",
      "descriptions":
          "Bored Apes are a specific collection of 10,000 non-fungible tokens. Each NFT is a singular image of a unique Bored Ape. Every image is a portrait of an Ape with specific characteristics. The eyes, mouth, fur, background, clothes, and accessories of these images are features that have multiple options.",
      "navigation": const HomeNftBoredApe(),
    }
  ];
  String descriptions =
      "What's a third-party application? A third-party app is a software application made by someone other than the manufacturer of a mobile device or its operating system. For instance, app development companies or individual developers create a lot of applications for Apple's or Google's operating systems.";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade50,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "All Modules Applications",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " $descriptions ",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listMenu.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => listMenu[index]["navigation"],
                        ),
                      );

                    },
                    child: PhysicalModel(
                      elevation: 2.0,
                      shadowColor: kSecondaryColor.shade200,
                      color: Colors.white,
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: 320,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Image.asset(
                              listMenu[index]["imagePath"],
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  listMenu[index]["title"],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "  ${listMenu[index]["descriptions"]} ",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
