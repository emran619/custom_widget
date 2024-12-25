import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double elevation;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry innerPadding;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final OutlinedBorder? shape;
  final BorderRadiusGeometry borderRadius;
  final BorderSide borderSide;
  final double width;
  final double height;
  final bool isLoading;
  final Color loaderColor;
  final double loaderSize;
  final double loaderStrokeWidth;
  // ~ items distribution
  final MainAxisAlignment mainAxisAlignment;
  // ~ general constructor for text and optional icon
  final bool extended;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.elevation = 5.0,
    this.innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    this.textStyle,
    this.iconColor = Colors.white,
    this.icon,
    this.iconSize = 20.0,
    this.borderRadius = BorderRadius.zero,
    this.borderSide = BorderSide.none,
    this.shape,
    this.width = 140,
    this.height = 50,
    this.isLoading = false,
    this.loaderColor = Colors.white,
    this.loaderStrokeWidth = 4.0,
    this.loaderSize = 21,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.extended = false,
  });

  // ~ rounded
  CustomElevatedButton.roundedShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    BorderSide borderSide = BorderSide.none,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
    Color iconColor = Colors.white,
    IconData? icon,
    double iconSize = 21.0,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
          icon: icon,
          iconSize: iconSize,
          iconColor: iconColor,
        );

  // ~ stadium
  CustomElevatedButton.stadiumShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
    Color iconColor = Colors.white,
    IconData? icon,
    double iconSize = 21.0,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderSide: borderSide,
          shape: StadiumBorder(
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
          icon: icon,
          iconSize: iconSize,
          iconColor: iconColor,
        );

  // ~ curved conrners
  CustomElevatedButton.curvedConrnersShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
    Color iconColor = Colors.white,
    IconData? icon,
    double iconSize = 21.0,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: ContinuousRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
          icon: icon,
          iconSize: iconSize,
          iconColor: iconColor,
        );

  // ~ beveled corners
  CustomElevatedButton.beveledConrnersShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
    Color iconColor = Colors.white,
    IconData? icon,
    double iconSize = 21.0,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: BeveledRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
          icon: icon,
          iconSize: iconSize,
          iconColor: iconColor,
        );

  // ~ text only
  CustomElevatedButton.textOnly({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    BorderSide borderSide = BorderSide.none,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          borderRadius: borderRadius,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
        );

  // ~ text only & rounded
  CustomElevatedButton.textOnlyWithRoundedShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    BorderSide borderSide = BorderSide.none,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
        );

  // ~ text only & stadium
  CustomElevatedButton.textOnlyWithStadiumShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderSide: borderSide,
          shape: StadiumBorder(
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
        );

  // ~ text only & curved conrners
  CustomElevatedButton.textOnlyWithCurvedConrnersShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: ContinuousRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
        );

  // ~ text only & beveled corners
  CustomElevatedButton.textOnlyWithBeveledConrnersShape({
    Key? key,
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double elevation = 5.0,
    EdgeInsetsGeometry innerPadding = const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 30.0,
    ),
    BorderSide borderSide = BorderSide.none,
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    TextStyle? textStyle,
    double width = 140.0,
    double height = 50.0,
    bool isLoading = false,
    Color loaderColor = Colors.white,
    double loaderStrokeWidth = 4.0,
    double loaderSize = 21.0,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
    bool extended = false,
  }) : this(
          key: key,
          text: text,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          textColor: textColor,
          elevation: elevation,
          innerPadding: innerPadding,
          textStyle: textStyle,
          borderRadius: borderRadius,
          borderSide: borderSide,
          shape: BeveledRectangleBorder(
            borderRadius: borderRadius,
            side: borderSide,
          ),
          width: width,
          height: height,
          isLoading: isLoading,
          loaderColor: loaderColor,
          loaderSize: loaderSize,
          loaderStrokeWidth: loaderStrokeWidth,
          // ~ items distribution
          mainAxisAlignment: mainAxisAlignment,
          extended: extended,
        );

  @override
  Widget build(BuildContext context) {
    List<Widget> rowChildren = [
      Text(
        text,
        style: textStyle ?? TextStyle(color: textColor),
      ),
    ];

    if (icon != null && !isLoading) {
      rowChildren.add(const SizedBox(width: 8));
      rowChildren.add(Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ));
    } else if (isLoading) {
      rowChildren.add(const SizedBox(width: 8));
      rowChildren.add(SizedBox(
        width: loaderSize,
        height: loaderSize,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: FittedBox(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(loaderColor),
              strokeWidth: loaderStrokeWidth,
            ),
          ),
        ),
      ));
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: shape,
        elevation: elevation,
        padding: innerPadding,
        minimumSize: Size(width, height),
      ),
      child: Row(
        mainAxisSize: extended ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment,
        children: rowChildren,
      ),
    );
  }
}
