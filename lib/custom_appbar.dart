import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final List<Widget>? actions;
  final Widget? centerWidget;

  /// ~ widget that shown behind appbar's elements like a background
  final Widget? leadingWidget;
  final Widget? backgroundWidget;

  /// ~ widget that shown just in the buttom of appbar
  final Widget? bottomWidget;
  final Color backgroundColor;
  final Color iconThemeColor;
  final double elevation;
  final double height;
  final TextStyle? textStyle;
  final ShapeBorder shape;
  final bool showBackButton;
  final bool transparentbackground;
  final SystemUiOverlayStyle? systemBarStyle;
  const CustomAppBar({
    super.key,
    this.titleText,
    this.centerWidget,
    this.actions,
    this.showBackButton = false,
    this.leadingWidget,
    this.backgroundWidget,
    this.bottomWidget,
    this.backgroundColor = Colors.blue,
    this.iconThemeColor = Colors.white,
    this.elevation = 4.0,
    this.height = 56.0,
    this.textStyle,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
      side: BorderSide.none,
    ),
    this.transparentbackground = false,
    this.systemBarStyle,
  });

  CustomAppBar.triangleShape({
    Key? key,
    String? titleText,
    List<Widget>? actions,
    bool showBackButton = false,
    Widget? centerWidget,
    Widget? leadingWidget,
    Widget? backgroundWidget,
    Color backgroundColor = Colors.blue,
    Color iconThemeColor = Colors.white,
    TextStyle? textStyle,
    bool transparentbackground = false,
    SystemUiOverlayStyle? systemBarStyle,

    /// default radius
    double appBarRadius = 1000.0,
    double height = 56.0,
    BorderSide appBarSide = BorderSide.none,
  }) : this(
          key: key,
          titleText: titleText,
          showBackButton: showBackButton,
          actions: actions,
          centerWidget: centerWidget,
          leadingWidget: leadingWidget,
          backgroundWidget: backgroundWidget,
          backgroundColor: backgroundColor,
          iconThemeColor: iconThemeColor,
          elevation: 0,
          height: height,
          transparentbackground: transparentbackground,
          textStyle: textStyle,
          systemBarStyle: systemBarStyle,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(appBarRadius),
            ),
            side: appBarSide,
          ),
        );

  CustomAppBar.curvyShape({
    Key? key,
    String? titleText,
    bool showBackButton = false,
    Widget? centerWidget,
    Widget? leadingWidget,
    Widget? backgroundWidget,
    Widget? bottomWidget,
    Color backgroundColor = Colors.blue,
    Color iconThemeColor = Colors.white,
    TextStyle? textStyle,
    List<Widget>? actions,
    double elevation = 4.0,
    double height = 56.0,
    bool transparentbackground = false,
    SystemUiOverlayStyle? systemBarStyle,

    /// default radius
    double appBarRadius = 100,
    BorderSide appBarSide = BorderSide.none,
  }) : this(
          key: key,
          titleText: titleText,
          showBackButton: showBackButton,
          actions: actions,
          centerWidget: centerWidget,
          leadingWidget: leadingWidget,
          bottomWidget: bottomWidget,
          backgroundWidget: backgroundWidget,
          backgroundColor: backgroundColor,
          iconThemeColor: iconThemeColor,
          elevation: elevation,
          height: height,
          textStyle: textStyle,
          transparentbackground: transparentbackground,
          systemBarStyle: systemBarStyle,
          shape: ContinuousRectangleBorder(
            borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(appBarRadius)),
            side: appBarSide,
          ),
        );

  CustomAppBar.semiCircularShape({
    Key? key,
    String? titleText,
    bool showBackButton = false,
    Widget? centerWidget,
    Widget? leadingWidget,
    Widget? bottomWidget,
    Widget? backgroundWidget,
    Color backgroundColor = Colors.blue,
    Color iconThemeColor = Colors.white,
    TextStyle? textStyle,
    List<Widget>? actions,
    double elevation = 4.0,
    double height = 56.0,
    bool transparentbackground = false,
    SystemUiOverlayStyle? systemBarStyle,

    /// default radius
    double appBarRadius = 1000,
    BorderSide appBarSide = BorderSide.none,
  }) : this(
          key: key,
          titleText: titleText,
          showBackButton: showBackButton,
          actions: actions,
          centerWidget: centerWidget,
          leadingWidget: leadingWidget,
          backgroundWidget: backgroundWidget,
          bottomWidget: bottomWidget,
          backgroundColor: backgroundColor,
          iconThemeColor: iconThemeColor,
          elevation: elevation,
          height: height,
          textStyle: textStyle,
          transparentbackground: transparentbackground,
          systemBarStyle: systemBarStyle,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(appBarRadius)),
            side: appBarSide,
          ),
        );

  CustomAppBar.ovalShape({
    Key? key,
    String? titleText,
    bool showBackButton = false,
    Widget? centerWidget,
    Widget? leadingWidget,
    Widget? backgroundWidget,
    Widget? bottomWidget,
    Color backgroundColor = Colors.blue,
    Color iconThemeColor = Colors.white,
    TextStyle? textStyle,
    List<Widget>? actions,
    double elevation = 4.0,
    double height = 56.0,
    SystemUiOverlayStyle? systemBarStyle,
    bool transparentbackground = false,
    BorderSide appBarSide = BorderSide.none,
  }) : this(
          key: key,
          titleText: titleText,
          showBackButton: showBackButton,
          actions: actions,
          centerWidget: centerWidget,
          leadingWidget: leadingWidget,
          bottomWidget: bottomWidget,
          backgroundWidget: backgroundWidget,
          backgroundColor: backgroundColor,
          iconThemeColor: iconThemeColor,
          elevation: elevation,
          height: height,
          textStyle: textStyle,
          systemBarStyle: systemBarStyle,
          transparentbackground: transparentbackground,
          shape: StadiumBorder(side: appBarSide),
        );

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Position background widget first and apply clipping
        if (backgroundWidget != null)
          Positioned.fill(
            child: ClipPath(
              clipper: AppBarShapeClipper(
                shape,
              ),
              child: backgroundWidget ?? const SizedBox(),
            ),
          ),

        // AppBar positioned on top of the background widget
        Positioned.fill(
          child: AppBar(
            backgroundColor:
                backgroundWidget == null ? backgroundColor : Colors.transparent,
            elevation: elevation,
            leading: showBackButton
                ? (leadingWidget ?? BackButton(color: iconThemeColor))
                : leadingWidget,
            title: centerWidget ??
                (titleText != null
                    ? Text(titleText!,
                        style: textStyle ??
                            TextStyle(
                              color: iconThemeColor,
                            ))
                    : null),
            centerTitle: true,
            forceMaterialTransparency: transparentbackground,
            systemOverlayStyle: systemBarStyle,
            bottom: bottomWidget == null
                ? null
                : PreferredSize(
                    preferredSize: const Size.fromHeight(50.0),
                    child: bottomWidget ?? const SizedBox(),
                  ),
            shape: shape,
            actions: actions,
            iconTheme: IconThemeData(color: iconThemeColor),
          ),
        ),
      ],
    );
  }

  // ~ default appbar height is 56.0
  @override
  Size get preferredSize => Size.fromHeight(height);
}

class AppBarShapeClipper extends CustomClipper<Path> {
  final ShapeBorder appBarShape;

  AppBarShapeClipper(this.appBarShape);

  @override
  Path getClip(Size size) {
    // Delegates to the ShapeBorder to get the clipping path
    Rect rect = Rect.fromLTRB(0, 0, size.width, size.height);
    return appBarShape.getOuterPath(rect);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
