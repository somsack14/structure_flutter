import 'package:flutter/material.dart';

Future pushPage(BuildContext context, page) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
