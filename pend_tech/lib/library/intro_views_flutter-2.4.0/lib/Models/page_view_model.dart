import 'package:flutter/material.dart';

//view model for pages

class PageViewModel {
  final Color pageColor;

  /// iconColor
  final Color iconColor;


  final Color bubbleBackgroundColor;

  /// widget for the title
  ///
  /// _typicaly a Text Widget_
  ///
  /// @Default Textstyle `color: Colors.white , fontSize: 50.0`
  final Widget title;

  /// widget for the body
  ///
  /// _typicaly a Text Widget_
  ///
  /// @Default Textstyle `color: Colors.white, fontSize: 24.0`
  final Widget body;

  /// set default TextStyle for both title and body

  /// Image Widget
  ///
  /// _typicaly a Image Widget_
  final Widget mainImage;


  PageViewModel(
      { required this.pageColor,
      this.bubbleBackgroundColor = const Color(0x88FFFFFF),
        required  this.iconColor,
      required this.title,
      required this.body,
      required this.mainImage,
      });

  TextStyle get titleTextStyle {
    return TextStyle(color: Colors.white, fontSize: 50.0);
  }

  TextStyle get bodyTextStyle {
    return TextStyle(color: Colors.white, fontSize: 24.0);
  }
}
