import 'package:flexiflow/flexiflow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    FlexiFlow(
      designSize: Size(360, 640),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexiflow Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flexiflow Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Non-flexiflowized box'),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16.h,
                ),
                child: Text('Flexiflowized box'),
              ),
              Container(
                height: 100.sqr,
                width: 100.sqr,
                color: Colors.red,
              ),
              FlowScreen(
                mobileChild: Container(
                  height: 100.sqr,
                  width: 100.sqr,
                  color: Colors.yellow,
                ),
                tabletChild: Container(
                  height: 100.sqr,
                  width: 100.sqr,
                  color: Colors.blue,
                ),
                desktopChild: Container(
                  height: 100.sqr,
                  width: 100.sqr,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
