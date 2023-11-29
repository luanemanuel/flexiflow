import 'package:flutter/widgets.dart';

/// Interface class for create custom flows.
/// [Type] is the type of the flow, you can use
/// a enum, object or any type that you need.
/// [getCurrentType] is the current type of the flow. It's used to return the
/// current type based on some logic, like the screen size.
/// [getCurrentFlow] is the current flow based on the current type. It's used to
/// return the current flow widget based on the current type.
abstract class IFlow<Type> {

  /// Return the current type of the flow. It's used to return the
  /// current type based on some logic, like the screen size.
  Type getCurrentType();

  /// Return the current flow based on the current type. It's used to
  /// return the current flow widget based on the current type.
  Widget getCurrentFlow(Type type);
}