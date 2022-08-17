import 'package:flutter/material.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';

import '../../component/constants/colors.dart';
import '../../component/models/data.dart';
import '../../component/models/user.dart';
import '../../component/serviecs/auth_serviecs/dio_client.dart';
import '../widgets/create_user.dart';
import '../widgets/fetch_user.dart';
import '../widgets/update_user.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'POST',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CreateUser(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Text(
                  'GET & DELETE',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const FetchUser(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  'UPDATE',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const UpdateUser(),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Text(
                  'GET (auto fetch)',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: FutureBuilder<Newsmodel?>(
                  future: _client.getNews(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Newsmodel? newsInfo = snapshot.data;

                      if (newsInfo != null) {
                        List<Article>? newsData = newsInfo.articles;

                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Image.network(newsData![1].author.toString()),
                            const SizedBox(height: 8.0),
                            Text(
                              '${newsData![0].author.toString()} ',
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            Text(
                              newsData![1].title.toString(),
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ],
                        );
                      }
                    }
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: CircularProgressIndicator(color: kTextPrimaryColor,),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
