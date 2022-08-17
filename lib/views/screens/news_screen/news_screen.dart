import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structure_flutter/component/models/appmodels.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/new_service_api.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    // AuthProviders authNews = Provider.of<AuthProviders>(context, listen:false);
    return Scaffold(
      body: SafeArea(
        child: Consumer<Newsmodel>(
          builder: (BuildContext context, value, Widget? child) => Container(
            color: Colors.blueGrey.shade50,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // Text(authNews.getNewsmodel!.articles.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
