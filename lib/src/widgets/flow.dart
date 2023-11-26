import 'package:flexiflow/src/util/devices_flow.dart';
import 'package:flexiflow/src/widgets/flow_builder.dart';
import 'package:flutter/widgets.dart';

class Flow extends StatefulWidget {
  const Flow({
    required this.mobileChild,
    required this.tabletChild,
    required this.desktopChild,
    super.key,
  });

  final Widget mobileChild;
  final Widget tabletChild;
  final Widget desktopChild;

  @override
  State<Flow> createState() => _FlowState();
}

class _FlowState extends State<Flow> {
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
