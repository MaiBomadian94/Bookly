import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/styles.dart';

class CustomBookButton extends StatelessWidget {
  const CustomBookButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.buttonText,
    this.fontSize,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String buttonText;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textTitle18.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
