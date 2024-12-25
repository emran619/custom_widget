import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final bool hideText;
  final TextInputAction keyboardButtonStyle;
  final ValueChanged<String>? onKeyboardButtonSubmitted;
  final double borderRadius;
  final EdgeInsetsGeometry contentPadding;
  final Color fieldColor;
  final Color focusedFieldColor;
  final TextStyle? hintStyle;
  final Duration? hintFadeDuration;
  final bool? alignLabelWithHint;
  final TextDirection? hintTextDirection;

  /// ~ onFocusChange: (hasFocus) { },
  void Function(bool)? onFocusChange;

  /// ~ OutlineInputBorder( ... )
  InputBorder? fieldBorderShape;

  /// ~ OutlineInputBorder( ... )
  InputBorder? focusedBorderShape;

  /// ~ OutlineInputBorder( ... )
  InputBorder? errorBorderShape;

  /// ~ OutlineInputBorder( ... )
  InputBorder? focusedErrorShape;
  CustomTextField({
    super.key,
    required this.labelText,
    this.hintText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.hideText = false,
    this.keyboardButtonStyle = TextInputAction.next,
    this.borderRadius = 8.0,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
    this.fieldColor = Colors.grey,
    this.focusedFieldColor = Colors.grey,
    this.onFocusChange,
    this.onKeyboardButtonSubmitted,
    this.fieldBorderShape,
    this.focusedBorderShape,
    this.errorBorderShape,
    this.focusedErrorShape,
    this.hintStyle,
    this.alignLabelWithHint,
    this.hintFadeDuration,
    this.hintTextDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: onFocusChange,
      child: Builder(
        builder: (BuildContext context) {
          final bool isFocused = Focus.of(context).hasFocus;
          Color myLabelColor = isFocused ? focusedFieldColor : fieldColor;

          return TextFormField(
            controller: controller,
            obscureText: hideText,
            keyboardType: keyboardType,
            textInputAction: keyboardButtonStyle,
            onFieldSubmitted: onKeyboardButtonSubmitted,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(color: myLabelColor),
              hintText: hintText,
              hintFadeDuration: hintFadeDuration,
              hintStyle: hintStyle,
              alignLabelWithHint: alignLabelWithHint,
              hintTextDirection: hintTextDirection,
              prefixIcon: prefixIcon != null
                  ? Icon(prefixIcon, color: myLabelColor)
                  : null,
              suffixIcon: suffixIcon,
              filled: true,
              fillColor: Colors.white,
              contentPadding: contentPadding,
              enabledBorder: fieldBorderShape ??
                  OutlineInputBorder(
                    borderSide: BorderSide(color: fieldColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
              focusedBorder: focusedBorderShape ??
                  OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isFocused ? focusedFieldColor : fieldColor),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
              errorBorder: errorBorderShape ??
                  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
              focusedErrorBorder: focusedErrorShape ??
                  OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
            ),
            validator: validator,
          );
        },
      ),
    );
  }
}
