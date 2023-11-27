import 'package:flutter/widgets.dart';

/// A class that helps to calculate responsive sizes based on the design size.
class FlexManager {
  /// Initialize the [FlexManager] with the design size and the buildContext.
  factory FlexManager({
    required Size designSize,
    required BuildContext context,
  }) {
    if (_instance != null) {
      _instance!.updateContext(context);
      return _instance!;
    }
    return _instance = FlexManager._(
      designSize: designSize,
      context: context,
    );
  }

  FlexManager._({
    required Size designSize,
    required BuildContext context,
  }) {
    _designSize = designSize;
    _context = context;
  }

  static FlexManager? _instance;

  /// Store the design size of the app.
  late Size _designSize;

  /// Store the actual buildContext of the app to calculate the screen size.
  late BuildContext _context;

  /// Returns the instance of the [FlexManager].
  static FlexManager get instance {
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
  /// [width] is the width of the widget in the design.
  /// [max] is the maximum width can take on responsive resizing.
  /// [min] is the minimum width can take on responsive resizing.
  double width(num width, {num? max, num? min}) {
    final calculatedWidth =
        width * MediaQuery.sizeOf(_context).width / _designSize.width;
    if (max != null && calculatedWidth > max) {
      return max.toDouble();
    }
    if (min != null && calculatedWidth < min) {
      return min.toDouble();
    }
    return calculatedWidth;
  }

  /// Calculate responsive height based on the design size. Can limit the max or/and min height
  /// [height] is the height of the widget in the design.
  /// [max] is the maximum height can take on responsive resizing.
  /// [min] is the minimum height can take on responsive resizing.
  double height(num height, {num? max, num? min}) {
    final calculatedHeight =
        height * MediaQuery.sizeOf(_context).height / _designSize.height;
    if (max != null && calculatedHeight > max) {
      return max.toDouble();
    }
    if (min != null && calculatedHeight < min) {
      return min.toDouble();
    }
    return calculatedHeight;
  }

  /// Calculate a square responsive size based on width of the design. Can limit the max or/and min size.
  /// This is useful for responsive square widgets like buttons, icons, etc.
  /// [value] is the size of the widget in the design.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
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

  /// Calculate responsive size based on the design size using the [TextScaler]
  /// to simulate Android SP scaling.
  /// Can limit the max or/and min size.
  /// [value] is the size of the widget in the design.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double sp(num value, {num? max, num? min}) {
    final textScaler = MediaQuery.textScalerOf(_context);
    final calculatedValue = textScaler.scale(value.toDouble());
    if (max != null && calculatedValue > max) {
      return max.toDouble();
    }
    if (min != null && calculatedValue < min) {
      return min.toDouble();
    }
    return calculatedValue;
  }

  /// Calculate responsive size based on the design size using the
  /// devicePixelRatio to simulate Android DP and iOS SP scaling.
  /// Can limit the max or/and min size.
  /// [value] is the size of the widget in the design.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double dp(num value, {num? max, num? min}) {
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(_context);
    final calculatedValue = devicePixelRatio * value.toDouble();
    if (max != null && calculatedValue > max) {
      return max.toDouble();
    }
    if (min != null && calculatedValue < min) {
      return min.toDouble();
    }
    return calculatedValue;
  }

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen width.
  /// Can limit the max or/and min size.
  /// [value] is the percentage of the screen width.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double widthPercentage(num value, {num? max, num? min}) {
    final percent = value.toDouble() / 100;
    final calculatedValue = percent * MediaQuery.sizeOf(_context).width;
    if (max != null && calculatedValue > max) {
      return max.toDouble();
    }
    if (min != null && calculatedValue < min) {
      return min.toDouble();
    }
    return calculatedValue;
  }

  /// Calculate responsive size based on the design size using the
  /// percentage of the screen height.
  /// Can limit the max or/and min size.
  /// [value] is the percentage of the screen height.
  /// [max] is the maximum size can take on responsive resizing.
  /// [min] is the minimum size can take on responsive resizing.
  double heightPercentage(num value, {num? max, num? min}) {
    final percent = value.toDouble() / 100;
    final calculatedValue = percent * MediaQuery.sizeOf(_context).height;
    if (max != null && calculatedValue > max) {
      return max.toDouble();
    }
    if (min != null && calculatedValue < min) {
      return min.toDouble();
    }
    return calculatedValue;
  }
}
