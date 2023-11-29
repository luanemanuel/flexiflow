import 'package:flexiflow/src/util/devices_flow.dart';
import 'package:flexiflow/src/util/iflow.dart';
import 'package:flexiflow/src/widgets/flow_builder.dart';
import 'package:flutter/widgets.dart';

/// [FlowScreen] is a widget that will build a different widget
/// depending on the device size.
/// He has three parameters, [mobileChild], [tabletChild] and [desktopChild]
/// and depending on the device size, one of them will be built.
/// If you need a different parameter for responsive, you can use the
/// [FlowBuilder] widget, creating your own flow with the [IFlow] interface.
class FlowScreen extends StatefulWidget {
  /// [FlowScreen] is a widget that will build a different widget
  /// depending on the device size.
  /// He has three parameters, [mobileChild], [tabletChild] and [desktopChild]
  /// and depending on the device size, one of them will be built.
  /// If you need a different parameter for responsive, you can use the
  /// [FlowBuilder] widget, creating your own flow with the [IFlow] interface.
  const FlowScreen({
    required this.mobileChild,
    required this.tabletChild,
    required this.desktopChild,
    super.key,
  });

  /// [mobileChild] is the widget that will be built if the device is mobile.
  final Widget mobileChild;
  /// [tabletChild] is the widget that will be built if the device is tablet.
  final Widget tabletChild;
  /// [desktopChild] is the widget that will be built if the device is desktop.
  final Widget desktopChild;

  @override
  State<FlowScreen> createState() => _FlowScreenState();
}

class _FlowScreenState extends State<FlowScreen> {
  @override
  Widget build(BuildContext context) {
    return FlowBuilder(
      flow: DeviceFlow(
        context: context,
        mobileChild: widget.mobileChild,
        tabletChild: widget.tabletChild,
        desktopChild: widget.desktopChild,
      ),
    );
  }
}
