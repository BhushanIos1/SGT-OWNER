import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sgt_owner/style/colors.dart';
import 'package:sgt_owner/style/font_style.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obsecure;
  final String? obscureCharacter;
  final String? hintText;
  final Widget? suffix;
  final Widget? prefix;
  final FormFieldValidator<String>? validator;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final ValueChanged<String>? onChanged;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String label;

  const AppTextField({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obsecure = false,
    this.obscureCharacter = '*',
    this.hintText,
    this.suffix,
    this.prefix,
    this.validator,
    this.readOnly = false,
    this.onTap,
    this.onEditingCompleted,
    this.onChanged,
    this.autofocus = false,
    this.enabled = true,
    this.errorText,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 46,
        child: TextFormField(
          enableInteractiveSelection: true,
          autocorrect:
              keyboardType == TextInputType.emailAddress ? false : true,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obsecure,
          obscuringCharacter: obscureCharacter!,
          style: AppFontStyle.mediumTextStyle(AppColors.textColor, 14.sp),
          validator: validator,
          readOnly: readOnly,
          onTap: onTap,
          onEditingComplete: onEditingCompleted,
          onChanged: onChanged,
          autofocus: autofocus,
          enabled: enabled,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle:
                AppFontStyle.regularTextStyle(AppColors.hintColor, 12.sp),
            prefixIcon: prefix,
            suffixIcon: obsecure
                ? IconButton(
                    onPressed: () {
                      controller?.clear();
                    },
                    icon: const Icon(
                      Icons.keyboard,
                      color: Colors.blue,
                    ))
                : suffix,
            errorText: errorText != '' ? errorText : '\u24D8 $errorText',
            errorStyle:
                AppFontStyle.regularTextStyle(AppColors.redColor, 10.sp),
            labelText: label,
            labelStyle:
                AppFontStyle.regularTextStyle(AppColors.textColor, 12.sp),
            contentPadding: const EdgeInsets.symmetric(horizontal: 19),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(width: 1, color: AppColors.disableColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide:
                  const BorderSide(width: 1, color: AppColors.disableColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
