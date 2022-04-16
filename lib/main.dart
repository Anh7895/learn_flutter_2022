import 'package:flutter/material.dart';

import 'catalog_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Quang Anh Learn 2022',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatalogScreen(),
    );
  }
}

class CatalogScreen extends StatelessWidget {
  final List<CatalogModel> _listCatalog = CatalogModel.toList();

   CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catalog'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            CatalogModel model = _listCatalog[index];
            return InkWell(
              child: ListTile(
                title: Text(model.widgetName),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              onTap: () async {
                await Future.delayed(const Duration(milliseconds: 200));
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => model.destinationScreen));
              },
            );
          },
          itemCount: _listCatalog.length,
        ));
  }
}

class SafeAreScreen extends StatelessWidget {
  const SafeAreScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeAre'),
      ),
      body: const Center(
        child: Text('Content SafeAre'),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.centerText}) : super(key: key);

  final Widget centerText;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 25) {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: MyInheritedWidget(widget.centerText, _counter),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CenterText2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    print('CenterTextState createState');
    return CenterTextState();
  }
}

class CenterTextState extends State<CenterText2> {
  @override
  Widget build(BuildContext context) {
    print('CenterTextState build');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '${MyInheritedWidget.of(context).myData}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}

class DataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataScreen2();
  }
}

class DataScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyInheritedWidget instance = MyInheritedWidget.of(context);
    return Container(
      child: Text(
        'Data is ${instance.myData}',
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  final int myData;

  MyInheritedWidget(Widget child, this.myData) : super(child: child);

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    print('updateShouldNotify $myData - ${oldWidget.myData}');
    return myData != oldWidget.myData;
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}
