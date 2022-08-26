import 'package:flutter/material.dart';
import 'package:structure_flutter/component/constants/colors.dart';

import 'text_style.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: textStyleLao(
            fontWeight: 'Bold',
            context: context,
            color: kTextBlackColor,
            size: 20,
            underLine: false),
      ),
    );
  }
}

class TextNormal extends StatelessWidget {
  const TextNormal({
    required this.title,
    required this.color,
    required this.underLine,
  });

  final Color color;
  final String title;
  final bool underLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyleLao(
          underLine: underLine == false ? false : true,
          fontWeight: 'Bold',
          context: context,
          color: color == null ? kTextBlackColor : color,
          size: 30),
    );
  }
}

class TextHeader extends StatelessWidget {
  const TextHeader(
      {required this.left, required this.right, required this.onTap});

  final String left;
  final GestureTapCallback onTap;
  final String right;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: textStyleLao(
                context: context,
                fontWeight: 'Bold',
                color: kTextBlackColor,
                size: 22,
                underLine: true),
          ),
          Visibility(
              visible: right != null,
              child: GestureDetector(
                  onTap: onTap,
                  child: Text(
                    right,
                    style: textStyleLao(
                        context: context,
                        color: kTextBlackColor,
                        fontWeight: 'Medium',
                        size: 28,
                        underLine: true),
                  ))),
        ],
      ),
    );
  }
}
