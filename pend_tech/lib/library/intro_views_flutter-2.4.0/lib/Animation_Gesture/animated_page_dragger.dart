import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pend_tech/Library/intro_views_flutter-2.4.0/lib/Constants/constants.dart';
import 'package:pend_tech/Library/intro_views_flutter-2.4.0/lib/Models/slide_update_model.dart';

/// This class provides the animation controller
/// used when then user stops dragging and page
/// reveal is not completed.

/// This class provides the animation controller
/// used when then user stops dragging and page
/// reveal is not completed.

class AnimatedPageDragger {
  final SlideDirection slideDirection;

  //This variable tells that whether we have to open or close the page reveal.
  final TransitionGoal transitionGoal;

  //Animation controller

  //Constructor
  AnimatedPageDragger({
    required this.slideDirection,
    required this.transitionGoal,
    required double slidePercent,
    required StreamController<SlideUpdate> slideUpdateStream,
    required TickerProvider vsync,
  }) {
    final startSlidePercent = slidePercent;
    double endSlidePercent;
    Duration duration;

    //We have to complete the page reveal
    if (transitionGoal == TransitionGoal.open) {
      endSlidePercent = 1.0;

      final slideRemaining = 1.0 - slidePercent;
      //Standard value take for drag velocity to avoid complex calculations.
      duration = Duration(
          milliseconds: (slideRemaining / PERCENT_PER_MILLISECOND).round());
    }
    //We have to close the page reveal
    else {
      endSlidePercent = 0.0;

      duration = Duration(
          milliseconds: (slidePercent / PERCENT_PER_MILLISECOND).round());
    }

    //Adding listener to animation controller
    //Also value to animation controller vary from 0.0 to 1.0 according to duration.

  }

  //This method is used to run animation Controller
  void run() {
  }

  //This method is used to dispose animation controller
  void dispose() {
  }
}
