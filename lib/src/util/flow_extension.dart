import 'package:flexiflow/src/util/flow_manager.dart';

extension FlowExtension on num {

  double get width => FlowManager.instance.width(this);
}