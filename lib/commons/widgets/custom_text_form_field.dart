import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;

  const CustomTextFormField({
    super.key,
    this.hintText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.greyDark,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.greyLight),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.darkLight,
          errorMaxLines: 3,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.grey),
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: AppColors.error,
            ),
          ),
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(
              color: AppColors.error,
            ),
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
          contentPadding: const EdgeInsets.all(24.0)),
    );
  }
}
