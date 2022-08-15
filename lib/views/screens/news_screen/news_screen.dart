import 'package:flutter/material.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/auth_services.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/new_service_api.dart';

import '../../../component/models/newsModel.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade50,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Discover"),
              const Text("data"),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: FutureBuilder<List<Article>>(
                future: NewApiServices().fetchNews(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data[index].title),
                          subtitle: Text(snapshot.data[index].description),
                        );
                      },
                    );
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
