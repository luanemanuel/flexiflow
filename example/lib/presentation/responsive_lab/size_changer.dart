import 'package:flexiflow/flexiflow.dart';
import 'package:flexiflow_example/presentation/responsive_lab/responsive_types.dart';
import 'package:flutter/material.dart';

class SizeChanger extends StatefulWidget {
  const SizeChanger({
    required this.onChanged,
    required this.value,
    required this.type,
    this.controller,
    super.key,
  });

  final TextEditingController? controller;

  final void Function(String) onChanged;

  final String value;
  final ResponsiveTypes type;

  @override
  State<SizeChanger> createState() => _SizeChangerState();
}

class _SizeChangerState extends State<SizeChanger> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: Column(
        children: [
          TextField(
            controller: widget.controller,
            onChanged: widget.onChanged,
            keyboardType: TextInputType.number,
          ),
          Slider(
            value: double.parse(widget.value),
            onChanged: (value) => widget.onChanged(value.toStringAsFixed(2)),
            min: 0,
            max: widget.type == ResponsiveTypes.percentHeightAndWidth ||
                    widget.type == ResponsiveTypes.limitedPercentHeightAndWidth
                ? 100
                : 350,
          ),
        ],
      ),
    );
  }
}
