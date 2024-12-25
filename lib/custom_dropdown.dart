import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T value;
  final Decoration? dropDownDecoration;
  final BorderRadius? menueBorderRaduis;
  final double? menueWidth;
  final double? menueItemHeight;
  final Color menueColor;
  final EdgeInsets padding;
  final TextStyle? textStyle;
  final bool expandedDropDown;
  final Icon? icon;
  final bool fittedDropDown;
  final int elevation;
  final void Function(T?) onChanged;
  final VoidCallback? onDropDownTapped;
  // Optional properties with default values where appropriate
  final double? iconSize;
  final AlignmentGeometry? alignment;
  final bool? autofocus;
  final Widget? disabledHint;
  final bool? enableFeedback;
  final Color? focusColor;
  final FocusNode? focusNode;
  final Widget? hint;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double? menuMaxHeight;
  final EdgeInsetsGeometry? paddingMenu;
  final DropdownButtonBuilder? selectedItemBuilder;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.value,
    this.dropDownDecoration,
    this.menueBorderRaduis,
    this.menueWidth,
    this.menueColor = Colors.white,
    this.menueItemHeight,
    this.padding = const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    this.textStyle,
    this.expandedDropDown = true,
    this.fittedDropDown = false,
    this.icon,
    this.elevation = 8,
    required this.onChanged,
    this.onDropDownTapped,
    // Initializing optional parameters
    this.iconSize,
    this.alignment,
    this.autofocus,
    this.disabledHint,
    this.enableFeedback,
    this.focusColor,
    this.focusNode,
    this.hint,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.menuMaxHeight,
    this.paddingMenu,
    this.selectedItemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: dropDownDecoration,
      child: DropdownButton<T>(
        value: value,
        icon: icon,
        isExpanded: expandedDropDown,
        borderRadius: menueBorderRaduis,
        isDense: fittedDropDown,
        itemHeight: menueItemHeight,
        menuWidth: menueWidth,
        elevation: elevation,
        onTap: onDropDownTapped,
        style: textStyle ?? const TextStyle(color: Colors.black, fontSize: 16),
        items: items,
        onChanged: onChanged,
        dropdownColor: menueColor,
        underline: const SizedBox(),
        iconSize: iconSize ?? 24.0, // ~ Default size
        alignment: alignment ?? Alignment.center,
        autofocus: autofocus ?? false,
        disabledHint: disabledHint,
        enableFeedback: enableFeedback ?? true,
        focusColor: focusColor ?? Theme.of(context).focusColor,
        focusNode: focusNode,
        hint: hint,
        iconDisabledColor: iconDisabledColor ?? Colors.grey,
        iconEnabledColor: iconEnabledColor ?? Colors.black,
        menuMaxHeight: menuMaxHeight,
        padding: paddingMenu ?? const EdgeInsets.all(8.0),
        selectedItemBuilder: selectedItemBuilder,
      ),
    );
  }
}
