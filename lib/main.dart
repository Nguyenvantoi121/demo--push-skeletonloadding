import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;

  play(){
    setState(() {
      isLoading = true;
    });
    Future.delayed(const Duration(seconds: 1),(){
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isLoading
               ? ProfileShimmer()
               : Text('jdxhkvjxhjkhvdjlkxjv:')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> play(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
