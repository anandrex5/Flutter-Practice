import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        //Text Button

        //   body: TextButton(
        //     child: Text("Click Here",),
        //   onPressed: () {
        //       print("Button CLicked");
        //     },
        //     onLongPress: (){
        //       print("Long Button Pressed");
        //
        // },

        //Elevated Button

        //    body:ElevatedButton(
        //      child: Text("Elevated Button"),
        //      onPressed: () {
        //        print("You clicked on Elevated Button");
        //      },
        //
        //    )

        //Outline Button
        body: OutlinedButton(
          child: Text("OutlinedButton Button"),
          onPressed: () {
            print("You clicked on OutlinedButton Button");
          },
        ));
  }
}
