import 'package:flexiflow/src/util/iflow.dart';
import 'package:flutter/widgets.dart';

class FlowBuilder<DeviceType, FlowType extends IFlow<DeviceType>>
    extends StatelessWidget {
  const FlowBuilder({
    required this.flow,
    super.key,
  });

  final FlowType flow;

  @override
  Widget build(BuildContext context) {
    return flow.getCurrentFlow(flow.getCurrentType());
  }
}
