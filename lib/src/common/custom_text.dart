import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool softWrap;
  final int maxLines;
  final TextOverflow overflow;

  CustomText(this.text, {this.fontSize, this.color, this.fontWeight, this.textAlign,
    this.softWrap, this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) {

    return Text(text,
      style: TextStyle(
        fontSize: fontSize??14,
        color: color??Colors.white,
        fontWeight: fontWeight??FontWeight.normal,
      ),
      textAlign: textAlign??TextAlign.start,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}