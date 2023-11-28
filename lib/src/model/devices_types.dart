import 'package:flexiflow/flexiflow.dart';

/// Base device types enum to use in [FlowScreen] widget
enum DevicesTypes {
  /// Mobile device type. It includes all devices with resolution less
  /// than 600px.
  mobile,

  /// Tablet device type with resolution between 600px and 1024px.
  tablet,

  /// Desktop device type with resolution greater than 1024px.
  desktop,
}
