import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/views/screens/home/home_screens.dart';
import 'package:structure_flutter/views/screens/top_up_success_animation.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const HomeScreens(),
      TopUpSuccessAnimationScreen(),
      Container(
        color: Colors.blueGrey.shade50,
      ),
      Container(
        color: Colors.blueGrey.shade50,
      ),
      Container(
        color: Colors.blueGrey.shade50,
      ),
    ];
    final _kTabs = <Tab>[
      const Tab(text: 'Applications'),
      const Tab(text: 'Games'),
      const Tab(text: 'News'),
      const Tab(text: 'Sports'),
      const Tab(text: 'Others'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.1, 0.9],
                colors: [kTextPrimaryColor, kPrimaryLightColor],
              ),
            ),
          ),
          title: Text('third party'.toUpperCase()),
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.search),
          //     onPressed: () {},//TODO  do something
          //   ),
          //   IconButton(
          //     icon: const Icon(Icons.account_circle),
          //     onPressed: () {},//TODO do something
          //   ),
          // ],
          bottom: TabBar(
            isScrollable: true,
            tabs: _kTabs,
            indicatorColor: kTextWhiteColor,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}
