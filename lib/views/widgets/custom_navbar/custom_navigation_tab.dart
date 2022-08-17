import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/login.dart';
import 'package:structure_flutter/component/serviecs/auth_serviecs/sign_in.dart';
import 'package:structure_flutter/views/screens/game.dart';
import 'package:structure_flutter/views/screens/home/home_screens.dart';
import 'package:structure_flutter/views/screens/news_screen/news_screen.dart';
import 'package:structure_flutter/views/screens/sports_screen/sports_screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedDestination = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final _kTabPages = <Widget>[
      const HomeScreens(),
      const GameScreen(),
      const NewsScreen(),
      const SportsScreen(),
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
        drawer: Drawer(
          elevation: 0,
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const SignIn();
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Login",
                          style: textTheme.headline6,
                        ),
                      ),
                    ),
                    const Text("/"),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const SportsScreen();
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Register",
                          style: textTheme.headline6,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Item 1'),
                  selectedColor: Colors.green,
                  selected: _selectedDestination == 0,
                  onTap: () => selectDestination(0),
                ),
                ListTile(
                  leading: const Icon(Icons.delete),
                  title: const Text('Item 2'),
                  selectedColor: Colors.green,
                  selected: _selectedDestination == 1,
                  onTap: () => selectDestination(1),
                ),
                ListTile(
                  leading: const Icon(Icons.label),
                  title: const Text('Item 3'),
                  selectedColor: Colors.green,
                  selected: _selectedDestination == 2,
                  onTap: () => selectDestination(2),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Label',
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  selectedColor: Colors.red,
                  selected: _selectedDestination == 3,
                  onTap: () => selectDestination(3),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
