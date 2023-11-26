import 'package:flutter/widgets.dart';

class FlowManager {
  factory FlowManager({
    required Size designSize,
    required BuildContext context,
  }) {
    if (_instance != null) {
      _instance!.updateContext(context);
      return _instance!;
    }
    return _instance = FlowManager._(
      designSize: designSize,
      context: context,
    );
  }

  FlowManager._({
    required Size designSize,
    required BuildContext context,
  }) {
    _designSize = designSize;
    _context = context;
  }

  static FlowManager? _instance;

  /// Store the design size of the app
  late Size _designSize;

  /// Store the actual buildContext of the app to calculate the screen size
  late BuildContext _context;

  /// Returns the instance of the [FlowManager]
  static FlowManager get instance {
    assert(
        _instance != null,
        'Flexiflow is not initialized!'
        '\nPlease wrap your app with Flexiflow widget.'
        '\nExample:'
        '\nvoid main() {'
        '\n  runApp('
        '\n    FlexiFlow('
        '\n      designSize: Size(360, 640),'
        '\n      child: const MyApp(),'
        '\n    ),'
        '\n  );'
        '\n}');
    return _instance!;
  }

  /// Update the buildContext of the app
  void updateContext(BuildContext buildContext) => _context = buildContext;

  /// Calculate responsive width based on the design size. Can limit the max or/and min width
  /// [width] is the width of the widget in the design
  /// [maxWidth] is the maximum width can take on responsive resizing
  /// [minWidth] is the minimum width can take on responsive resizing
  double width(num width, {num? maxWidth, num? minWidth}) {
    final calculatedWidth =
        width * MediaQuery.sizeOf(_context).width / _designSize.width;
    if (maxWidth != null && calculatedWidth > maxWidth) {
      return maxWidth.toDouble();
    }
    if (minWidth != null && calculatedWidth < minWidth) {
      return minWidth.toDouble();
    }
    return calculatedWidth;
  }

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [height] is the height of the widget in the design
  /// [maxHeight] is the maximum height can take on responsive resizing
  /// [minHeight] is the minimum height can take on responsive resizing
  double height(num height, {num? maxHeight, num? minHeight}) {
    final calculatedHeight =
        height * MediaQuery.sizeOf(_context).height / _designSize.height;
    if (maxHeight != null && calculatedHeight > maxHeight) {
      return maxHeight.toDouble();
    }
    if (minHeight != null && calculatedHeight < minHeight) {
      return minHeight.toDouble();
    }
    return calculatedHeight;
  }

  /// Calculate a square responsive size based on width of the design. Can limit the max or/and min size.
  /// This is useful for responsive square widgets like buttons, icons, etc.
  /// [value] is the size of the widget in the design
  /// [max] is the maximum size can take on responsive resizing
  /// [min] is the minimum size can take on responsive resizing
  double squared(num value, {num? max, num? min}) {
    final calculatedValue =
        value * MediaQuery.sizeOf(_context).width / _designSize.width;
    if (max != null && calculatedValue > max) {
      return max.toDouble();
    }
    if (min != null && calculatedValue < min) {
      return min.toDouble();
    }
    return calculatedValue;
  }
}
