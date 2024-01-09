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
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final Function(PointerDownEvent)? onTapOutside;
  final Function(String?)? onFieldSubmitted;
  final bool enabled;
  final String? errorText;
  final Widget? label;
  final String? labelText;

  const AppTextField(
      {Key? key,
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
      this.focusNode,
      this.onSaved,
      this.onTapOutside,
      this.onFieldSubmitted,
      this.enabled = true,
      this.errorText,
      this.labelText,
      this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SizedBox(
      child: TextFormField(
        enableInteractiveSelection: true,
        autocorrect: keyboardType == TextInputType.emailAddress ? false : true,
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
        focusNode: focusNode,
        onSaved: onSaved,
        onTapOutside: onTapOutside,
        onFieldSubmitted: onFieldSubmitted,
        enabled: enabled,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: AppFontStyle.regularTextStyle(AppColors.hintColor, 12.sp),
          prefixIcon: prefix,
          suffixIcon: suffix,
          errorText: errorText != '' ? errorText : '\u24D8 $errorText',
          errorStyle: AppFontStyle.regularTextStyle(
            AppColors.redColor,
            10.sp,
          ),
          label: label,
          labelText: labelText,
          labelStyle: AppFontStyle.regularTextStyle(AppColors.textColor, 12.sp),
          contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
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
    );
  }
}

class SignUpTextField extends StatelessWidget {
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
  final FocusNode? focusNode;
  final Function(String?)? onSaved;
  final Function(PointerDownEvent)? onTapOutside;
  final Function(String?)? onFieldSubmitted;
  final bool enabled;
  final String? errorText;
  final Widget? label;
  final String? labelText;
  final int? maxWords;

  const SignUpTextField(
      {Key? key,
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
      this.focusNode,
      this.onSaved,
      this.onTapOutside,
      this.onFieldSubmitted,
      this.enabled = true,
      this.errorText,
      this.labelText,
      this.label,
      this.maxWords})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SizedBox(
      child: TextFormField(
        enableInteractiveSelection: true,
        autocorrect: keyboardType == TextInputType.emailAddress ? false : true,
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
        focusNode: focusNode,
        onSaved: onSaved,
        onTapOutside: onTapOutside,
        onFieldSubmitted: onFieldSubmitted,
        enabled: enabled,
        maxLength: maxWords,
        buildCounter: (context,
            {required currentLength, required isFocused, maxLength}) {
          return Container(
            transform: Matrix4.translationValues(20, -5, 0),
            child: Text(
              "$currentLength/$maxLength Characters",
              style: AppFontStyle.regularTextStyle(AppColors.grayColor, 12.sp),
            ),
          );
        },
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: AppFontStyle.regularTextStyle(AppColors.hintColor, 12.sp),
          prefixIcon: prefix,
          suffixIcon: suffix,
          errorText: errorText != '' ? errorText : '\u24D8 $errorText',
          errorStyle: AppFontStyle.regularTextStyle(
            AppColors.redColor,
            10.sp,
          ),
          label: label,
          labelText: labelText,
          labelStyle: AppFontStyle.regularTextStyle(AppColors.black, 12.sp),
          contentPadding: EdgeInsets.symmetric(horizontal: 19.w),
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
    );
  }
}
