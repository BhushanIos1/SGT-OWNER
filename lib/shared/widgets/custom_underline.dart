import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class CustomUnderlineTextFieldWidget extends StatelessWidget {
  CustomUnderlineTextFieldWidget({
    super.key,
    required this.textfieldTitle,
    required this.hintText,
    this.obscureText = false,
    this.autoCorrect = true,
    this.readonly = false,
    this.onChanged,
    this.suffixIcon,
    this.controller,
    this.bottomPadding = 25,
    this.focusNode,
    this.onEditCompleted,
    this.keyboardType,
  });
  final String textfieldTitle;
  final String hintText;
  TextEditingController? controller;
  final bool obscureText;
  final bool autoCorrect;
  ValueChanged<String>? onChanged;
  Widget? suffixIcon;
  bool? readonly;
  double bottomPadding;
  FocusNode? focusNode;
  VoidCallback? onEditCompleted;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textfieldTitle,
            style: AppFontStyle.semiboldTextStyle(AppColors.primaryColor, 12.sp),
          ),
          TextField(
            keyboardType: keyboardType,
            onChanged: onChanged,
            focusNode: focusNode,
            readOnly: readonly!,
            obscureText: obscureText,
            controller: controller,
            onEditingComplete: onEditCompleted,
            autocorrect: true,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondaryColor)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primaryColor)),
              hintStyle: const TextStyle(color: Colors.grey),
              focusColor: AppColors.primaryColor,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
