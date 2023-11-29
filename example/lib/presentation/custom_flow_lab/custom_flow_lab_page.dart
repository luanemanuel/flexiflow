import 'package:flexiflow/flexiflow.dart';
import 'package:flexiflow_example/presentation/custom_flow_lab/custom_flow.dart';
import 'package:flexiflow_example/presentation/custom_flow_lab/flow_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CustomFlowLabPage extends StatefulWidget {
  const CustomFlowLabPage({
    super.key,
  });

  @override
  State<CustomFlowLabPage> createState() => _CustomFlowLabPageState();
}

class _CustomFlowLabPageState extends State<CustomFlowLabPage> {
  late CustomFlow _flow;

  late TextEditingController _nameController;
  late TextEditingController _widthController;
  late Color _color;

  @override
  void initState() {
    super.initState();
    _flow = CustomFlow(
      context: context,
    );
    _nameController = TextEditingController();
    _widthController = TextEditingController();
    _color = Colors.black;
  }

  void openAddModal() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Flow'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextField(
                controller: _widthController,
                decoration: InputDecoration(
                  labelText: 'Width',
                ),
              ),
              SizedBox(height: 20),
              ColorPicker(
                pickerColor: _color,
                onColorChanged: (color) {
                  setState(() {
                    _color = color;
                  });
                },
                pickerAreaHeightPercent: 0.8,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _flow.flows.add(
                    FlowModel(
                      id: _flow.flows.length,
                      name: _nameController.text,
                      color: _color,
                      width: double.tryParse(_widthController.text) ?? 0,
                    ),
                  );
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: Text('Custom Flow Laboratory'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openAddModal,
        child: Icon(Icons.add),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Customize your flow and resize the window to see the changes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 36,
              ),
              child: FlowBuilder(
                flow: _flow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Flows',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Container(
                  width: 50.wPerc,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _flow.flows.length,
                      itemBuilder: (context, index) {
                        final flow = _flow.flows[index];
                        return FlowScreen(
                          mobileChild: Dismissible(
                            key: Key(flow.id.toString()),
                            direction: DismissDirection.endToStart,
                            behavior: HitTestBehavior.opaque,
                            onDismissed: (direction) {
                              setState(() {
                                _flow.flows.remove(flow);
                              });
                            },
                            background: Container(
                              color: Colors.red,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 24),
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            child: ListTile(
                              title: Text(flow.name),
                              subtitle: Text('Width: ${flow.width}'),
                              leading: Container(
                                width: 50.sqr,
                                height: 50.sqr,
                                decoration: BoxDecoration(
                                  color: flow.color,
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          tabletChild: ListTile(
                            title: Text(flow.name),
                            subtitle: Text('Width: ${flow.width}'),
                            leading: Container(
                              width: 50.sqr,
                              height: 50.sqr,
                              decoration: BoxDecoration(
                                color: flow.color,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  _flow.flows.remove(flow);
                                });
                              },
                            ),
                          ),
                          desktopChild: ListTile(
                            title: Text(flow.name),
                            subtitle: Text('Width: ${flow.width}'),
                            leading: Container(
                              width: 100.sqr,
                              height: 100.sqr,
                              decoration: BoxDecoration(
                                color: flow.color,
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  _flow.flows.remove(flow);
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
