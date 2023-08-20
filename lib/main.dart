import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BackData/FoActivity.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Home Page',
        home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Home'),
        ),
        body: Column(
            child: ElevatedButton(
                child: const Text('First Route'),
                onPressed: (){
                    
                },
            ),
        ),
    );
  }


 
}

