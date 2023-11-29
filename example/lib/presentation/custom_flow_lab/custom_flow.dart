import 'package:collection/collection.dart';
import 'package:flexiflow/flexiflow.dart';
import 'package:flexiflow_example/presentation/custom_flow_lab/flow_model.dart';
import 'package:flutter/material.dart';

class CustomFlow extends IFlow<FlowModel> {
  CustomFlow({
    required this.context,
  });

  final BuildContext context;
  final List<FlowModel> flows = [
    FlowModel(
      id: 0,
      name: 'Mobile',
      color: Colors.blue,
      width: 600,
    ),
    FlowModel(
      id: 1,
      name: 'Tablet',
      color: Colors.green,
      width: 900,
    ),
    FlowModel(
      id: 2,
      name: 'Desktop',
      color: Colors.red,
      width: 1200,
    ),
  ];

  @override
  Widget getCurrentFlow(FlowModel type) {
    final color = type.color;
    return Column(
      children: [
        Center(
          child: Text(
            type.name,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        Container(
          width: 15.wPerc,
          height: 15.wPerc,
          color: color,
        ),
      ],
    );
  }

  @override
  FlowModel getCurrentType() {
    final size = MediaQuery.sizeOf(context);
    FlowModel? actualModel;
    flows.forEach((model) {
      if (size.width < model.width) {
        if (actualModel == null) {
          actualModel = model;
        } else {
          if (model.width < actualModel!.width) {
            actualModel = model;
          }
        }
      }
    });
    return actualModel ??
        flows.lastOrNull ??
        FlowModel(
          id: 0,
          name: 'Default',
          color: Colors.black,
          width: 1200,
        );
  }
}
