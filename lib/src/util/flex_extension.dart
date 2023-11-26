import 'package:flexiflow/src/util/flex_manager.dart';
import 'package:flutter/material.dart';

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

  /// Calculate responsive width based on the design size. Can limit the max or/and min width
  /// [maxWidth] is the maximum width can take on responsive resizing
  /// [minWidth] is the minimum width can take on responsive resizing
  double limitedWidth({num? maxWidth, num? minWidth}) =>
      FlexManager.instance.width(
        this,
        maxWidth: maxWidth,
        minWidth: minWidth,
      );

  /// Calculate responsive width based on the design size. Can limit the max or/and min width
  /// [maxWidth] is the maximum width can take on responsive resizing
  /// [minWidth] is the minimum width can take on responsive resizing
  double limW({num? maxWidth, num? minWidth}) => limitedWidth(
        maxWidth: maxWidth,
        minWidth: minWidth,
      );

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [maxHeight] is the maximum height can take on responsive resizing
  /// [minHeight] is the minimum height can take on responsive resizing
  double limitedHeight({num? maxHeight, num? minHeight}) =>
      FlexManager.instance.height(
        this,
        maxHeight: maxHeight,
        minHeight: minHeight,
      );

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [maxHeight] is the maximum height can take on responsive resizing
  /// [minHeight] is the minimum height can take on responsive resizing
  double limH({num? maxHeight, num? minHeight}) => limitedHeight(
        maxHeight: maxHeight,
        minHeight: minHeight,
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
}
