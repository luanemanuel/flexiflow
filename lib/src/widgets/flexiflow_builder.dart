import 'package:flutter/widgets.dart';

class FlexiFlow extends StatefulWidget {
  const FlexiFlow({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<FlexiFlow> createState() => _FlexiFlowState();
}

class _FlexiFlowState extends State<FlexiFlow> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
