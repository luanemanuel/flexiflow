import 'package:flutter/widgets.dart';

abstract class IFlow<Type> {

  Type getCurrentType();

  Widget getCurrentFlow(Type type);
}