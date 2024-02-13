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
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        // this line for VERTICAL SCROLL
        child: SingleChildScrollView(
          child: Column(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // this line for VERTICAL SCROLL
                  child: SingleChildScrollView(
                    //add this line for HORIZONTAL SCROLL
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lightGreen,
                    
                        ),Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.pink,
                    
                        ),Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.greenAccent,
                    
                        ),Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.deepOrangeAccent,
                    
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.orange,
          
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                 // width: 200,
                  color: Colors.lightBlue,
          
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.pinkAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.black,
                )
              ]
              ),
        ),
      ));
  }
}
