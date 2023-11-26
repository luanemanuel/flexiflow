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

class _FlexiFlowState extends State<FlexiFlow> with WidgetsBindingObserver {
  late final FlowManager _flowManager;

  @override
  void initState() {
    super.initState();
    _flowManager = FlowManager(
      designSize: widget.designSize,
      context: context,
    );
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didUpdateWidget(FlexiFlow oldWidget) {
    super.didUpdateWidget(oldWidget);
    _flowManager.updateContext(context);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      _rebuildChildren(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _rebuildChildren(BuildContext context) {
    void rebuild(Element el) {
      el
        ..markNeedsBuild()
        ..visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }
}
