import 'package:flexiflow/src/util/iflow.dart';
import 'package:flutter/widgets.dart';

/// [FlowBuilder] is a widget that builds a [IFlow] based widget.
/// It's used to build a [IFlow] based widget based on the current type
/// of the [IFlow].
class FlowBuilder<DeviceType, FlowType extends IFlow<DeviceType>>
    extends StatelessWidget {
  /// [FlowBuilder] is a widget that builds a [IFlow] based widget.
  /// It's used to build a [IFlow] based widget based on the current type
  /// of the [IFlow].
  const FlowBuilder({
    required this.flow,
    super.key,
  });

  /// [flow] is the [IFlow] that is used to build the widget.
  final FlowType flow;

  @override
  Widget build(BuildContext context) {
    return flow.getCurrentFlow(flow.getCurrentType());
  }
}
