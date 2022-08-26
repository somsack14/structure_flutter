import 'package:flutter/material.dart';

textStyleLao(
    {required BuildContext context,
    Color? color,
    required double size,
    String? fontWeight,
    bool? underLine}) {
  return TextStyle(
      decoration: underLine == false ? null : TextDecoration.underline,
      fontFamily: fontWeight == 'Bold'
          ? 'NotoSansLaoBold'
          : fontWeight == 'SemiBold'
              ? 'NotoSansLaoSemiBold'
              : fontWeight == 'Medium'
                  ? 'NotoSansLaoMedium'
                  : 'NotoSansLaoRegular',
      color: color);
}
