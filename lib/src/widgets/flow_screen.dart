import 'package:flexiflow/src/util/devices_flow.dart';
import 'package:flexiflow/src/widgets/flow_builder.dart';
import 'package:flutter/widgets.dart';

class FlowScreen extends StatefulWidget {
  const FlowScreen({
    required this.mobileChild,
    required this.tabletChild,
    required this.desktopChild,
    super.key,
  });

  final Widget mobileChild;
  final Widget tabletChild;
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
