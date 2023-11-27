import 'package:flexiflow/src/util/flex_manager.dart';
import 'package:flutter/material.dart';

/// Extension for [num] to calculate responsive size based on the design size.
extension FlexExtension on num {
  /// Calculate responsive width based on the design size.
  double get width => FlexManager.instance.width(this);

  /// Calculate responsive width based on the design size.
  double get w => width;

  /// Calculate responsive height based on the design size.
  double get height => FlexManager.instance.height(this);

  /// Calculate responsive height based on the design size.
  double get h => height;

  /// Calculate responsive squared size based on the design size.
  /// Useful for square widgets like [CircleAvatar], [IconButton], etc.
  double get squared => FlexManager.instance.squared(this);

  /// Calculate responsive squared size based on the design size.
  /// Useful for square widgets like [CircleAvatar], [IconButton], etc.
  double get sqr => squared;

  /// Calculate responsive size based on the design size using the [TextScaler]
  /// to simulate Android SP scaling.
  double get sp => FlexManager.instance.sp(this);

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP scaling.
  double get dp => FlexManager.instance.dp(this);

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen width.
  double get widthPercentage => FlexManager.instance.widthPercentage(this);

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen width.
  double get wPerc => widthPercentage;

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen height.
  double get heightPercentage => FlexManager.instance.heightPercentage(this);

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen height.
  double get hPerc => heightPercentage;

  /// Calculate responsive width based on the design size. Can limit the max or/and min width
  /// [max] is the maximum width can take on responsive resizing
  /// [min] is the minimum width can take on responsive resizing
  double limitedWidth({num? max, num? min}) => FlexManager.instance.width(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive width based on the design size. Can limit the max or/and min width
  /// [max] is the maximum width can take on responsive resizing
  /// [min] is the minimum width can take on responsive resizing
  double limW({num? max, num? min}) => limitedWidth(
        max: max,
        min: min,
      );

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [max] is the maximum height can take on responsive resizing
  /// [min] is the minimum height can take on responsive resizing
  double limitedHeight({num? max, num? min}) => FlexManager.instance.height(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [max] is the maximum height can take on responsive resizing
  /// [min] is the minimum height can take on responsive resizing
  double limH({num? max, num? min}) => limitedHeight(
        max: max,
        min: min,
      );

  /// Calculate responsive squared size based on the design size. Can limit the max or/and min size.
  /// Useful for square widgets like [CircleAvatar], [IconButton], etc.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limitedSquared({num? max, num? min}) => FlexManager.instance.squared(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive squared size based on the design size. Can limit the max or/and min size.
  /// Useful for square widgets like [CircleAvatar], [IconButton], etc.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limSqr({num? max, num? min}) => limitedSquared(
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the [TextScaler]
  /// to simulate Android SP scaling.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limitedSp({num? max, num? min}) => FlexManager.instance.sp(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the [TextScaler]
  /// to simulate Android SP scaling.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limSp({num? max, num? min}) => limitedSp(
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP scaling.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limitedDp({num? max, num? min}) => FlexManager.instance.dp(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP scaling.
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double limDp({num? max, num? min}) => limitedDp(
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP and iOS SP scaling.
  /// Can limit the max or/and min size.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double limitedWidthPercentage({num? max, num? min}) =>
      FlexManager.instance.widthPercentage(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP and iOS SP scaling.
  /// Can limit the max or/and min size.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double limWPerc({num? max, num? min}) => limitedWidthPercentage(
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen height.
  /// Can limit the max or/and min size.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double limitedHeightPercentage({num? max, num? min}) =>
      FlexManager.instance.heightPercentage(
        this,
        max: max,
        min: min,
      );

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen height.
  /// Can limit the max or/and min size.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double limHPerc({num? max, num? min}) => limitedHeightPercentage(
        max: max,
        min: min,
      );
}
