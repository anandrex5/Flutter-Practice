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
          title: Text('Flutter Container'),
        ),
        // this is Container code with
        /*      body:Container(
      child: ElevatedButton(
        child: Text("click me"),
        onPressed: (){
          print("Button is Pressed");
        },
      )
      )*/

        body: Center(
          child: InkWell(
            onTap: () {
              print("OnTap button CLicked");
            },
            onLongPress: () {
              print("onLong Button Tapped");
            },
            onDoubleTap: () {
              print("onDouble Button Tapped");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.lightGreen,
              //child: Center(child: Text("Click Here", style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),)),
              //wrapp with the widget inkwell
              child: Center(
                  child: InkWell(
                      onTap: () {
                        print("You clicked on Text");
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w700),
                      ))),
            ),
          ),
        ));
  }
}
