import 'package:flutter/material.dart';

class BaseFlowLabPage extends StatefulWidget {
  const BaseFlowLabPage({
    super.key,
  });

  @override
  State<BaseFlowLabPage> createState() => _BaseFlowLabPageState();
}

class _BaseFlowLabPageState extends State<BaseFlowLabPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text('Base Flow Laboratory'),
      ),
      body: Center(
        child: Text('BaseFlowLabPage'),
      ),
    );
  }
}
