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
    //taking an arrayList

    var arrName = [
      'Anand',
      'Sandeep',
      'Aditya',
      'Sunil',
      'Dinesh',
      'Mahendra',
      'Vishal'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container'),
      ),

      // **-- ListView --** //
      /*
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("One",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Two",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Three",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Four",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Five",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
            )
          ],
        ),
      )
*/

      //ListView.builder(better when we fetch data for API)
/*
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
           arrName[index],
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          );
        },
        //repeat this One for the 5 times
        // itemCount: 5,
        itemCount: arrName.length,
        // to reverse the list
        // reverse: true,

        //to extend item
        //itemExtent: 100,

        scrollDirection: Axis.horizontal,
      )
*/
      //ListView separated
      body: ListView.separated(
        itemBuilder: (context, index) {
          //Working fine for normal widgets
          // return Text(
          //  arrName[index],
          //   style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          // );

          //to shows 3 widgets in a single Row-
/*
          return Row(
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(
               arrName[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
             )   ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                             arrName[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                             arrName[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
              ),
            ],
          );
*/
          //TO show in column
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(arrName[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrName[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrName[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
            ],
          );
        },
        //repeat this One for the 5 times
        // itemCount: 5,
        itemCount: arrName.length,
        // to reverse the list
        // reverse: true,

        //to extend item
        //itemExtent: 100,

        //scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          //use divider to seperate two list items
          return Divider(
            height: 100,
            thickness: 2,
          );
        },
      ),
    );
  }
}
