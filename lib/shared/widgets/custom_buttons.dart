// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/style/font_style.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton(
      {super.key,
      required this.onTaps,
      required this.backgoundColor,
      required this.textColor,
      this.borderColor,
      required this.titleText,
      this.isIcon = false});

  VoidCallback? onTaps;
  Color backgoundColor;
  Color textColor;
  Color? borderColor;
  String titleText;
  bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: backgoundColor,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: borderColor ?? Colors.white)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTaps,
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 47,
            width: MediaQuery.of(context).size.width - 32,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 35.0,
                  ),
                  Text(
                    titleText,
                    style: AppFontStyle.semiboldTextStyle(textColor, 16.sp),
                  ),
                  isIcon
                      ? Icon(
                          Icons.arrow_forward_rounded,
                          color: textColor,
                          size: 25,
                        )
                      : Icon(
                          Icons.ac_unit,
                          color: Colors.transparent,
                          size: 25,
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
