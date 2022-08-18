import 'package:flutter/material.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/dio_client.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Newsmodel?>(
      future: _client.getNews(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Newsmodel? newsInfo = snapshot.data;

          if (newsInfo != null) {
            List<Article>? newsData = newsInfo.articles;
            // return Container(
            //   width: 100,
            //   padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            //   child: SingleChildScrollView(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SizedBox(
            //               width: Adaptive.w(70),
            //               child: Text(
            //                 newsData![1].title.toString(),
            //                 style: const TextStyle(
            //                     fontSize: 30, fontWeight: FontWeight.w500),
            //                 overflow: TextOverflow.ellipsis,
            //               ),
            //             ),
            //             IconButton(
            //               onPressed: () {},
            //               icon: Container(
            //                 width: 100,
            //                 height: 100,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white38,
            //                     borderRadius: BorderRadius.circular(10)),
            //
            //                 // color: Colors.white54,
            //                 child: const Icon(
            //                   Icons.search,
            //                   color: Colors.blueAccent,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: const [
            //             Text(
            //               "Recent news",
            //               style: TextStyle(
            //                   fontSize: 22, fontWeight: FontWeight.w500),
            //             ),
            //             Text(
            //               "Show all",
            //               style: TextStyle(fontWeight: FontWeight.w500),
            //             ),
            //           ],
            //         ),
            //
            //       ],
            //     ),
            //   ),
            // );
            return ListView.builder(
              itemCount: newsData!.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Text(newsData[index].author.toString()));
              },
            );
          }
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
