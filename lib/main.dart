import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sizer/sizer.dart';
import 'package:structure_flutter/component/models/appmodels.dart';
import 'package:structure_flutter/component/models/newsmodel.dart';
import 'package:structure_flutter/component/models/notifi_model.dart';
import 'package:structure_flutter/views/widgets/custom_navbar/custom_navigation_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppModel>(create: (_) => AppModel()),
        ChangeNotifierProvider<NotifiModel>(create: (_) => NotifiModel()),
        Provider<Newsmodel>(create: (_) => Newsmodel()),
      ],
      child: ResponsiveSizer(
        builder: (
          BuildContext context,
          Orientation orientation,
          ScreenType screenType,
        ) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Structure Flutter',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const CustomNavigationBar(),
          );
        },
      ),
    );
  }
}
