import 'package:flutter/material.dart';

class CustomFlowLabPage extends StatefulWidget {
  const CustomFlowLabPage({
    super.key,
  });

  @override
  State<CustomFlowLabPage> createState() => _CustomFlowLabPageState();
}

class _CustomFlowLabPageState extends State<CustomFlowLabPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text('Custom Flow Laboratory'),
      ),
      body: Center(
        child: Text('CustomFlowLabPage'),
      ),
    );
  }
}
