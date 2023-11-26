import 'package:flexiflow/src/util/flow_manager.dart';
import 'package:flutter/widgets.dart';

class FlexiFlow extends StatefulWidget {
  const FlexiFlow({
    required this.designSize,
    required this.child,
    super.key,
  });

  final Size designSize;
  final Widget child;

  @override
  State<FlexiFlow> createState() => _FlexiFlowState();
}

class _FlexiFlowState extends State<FlexiFlow> {
  late final FlowManager _flowManager;

  @override
  void initState() {
    super.initState();
    _flowManager = FlowManager(
      designSize: widget.designSize,
      context: context,
    );
  }

  @override
  void didUpdateWidget(FlexiFlow oldWidget) {
    super.didUpdateWidget(oldWidget);
    _flowManager.updateContext(context);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
