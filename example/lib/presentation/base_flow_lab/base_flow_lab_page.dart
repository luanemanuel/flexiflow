import 'package:flexiflow/flexiflow.dart';
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
        child: FlowScreen(
          desktopChild: Container(
            width: double.infinity,
            color: Colors.deepPurple,
            child: Column(
              children: [
                Text(
                  'Resize the window to see the changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text(
                  'Desktop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          tabletChild: Container(
            width: double.infinity,
            color: Colors.green,
            child: Column(
              children: [
                Text(
                  'Resize the window to see the changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
                Text(
                  'Tablet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          mobileChild: Container(
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Text(
                  'Resize the window to see the changes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
                Text(
                  'Mobile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
