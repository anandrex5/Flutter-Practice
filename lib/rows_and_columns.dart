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
          title: Center(child: Text('Hello User')),
        ),
        //Outline Button

        // ** --- For Row --- **//
    //     body:Container(
    //       //width: 300,
    //       child: Row(
    //         //change horizontal in the row
    //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //        //change vertically in the row
    //        //crossAxisAlignment:  CrossAxisAlignment.center ,
    //       children: [
    //         Text('A',style: TextStyle(fontSize: 25),),
    //         Text('B',style: TextStyle(fontSize: 25),),
    //         Text('C',style: TextStyle(fontSize: 25),),
    //         Text('D',style: TextStyle(fontSize: 25),),
    //         Text('E',style: TextStyle(fontSize: 25),),
    //         ElevatedButton(onPressed: (){
    //         },
    //         child: Text('Click')),
    //
    //       ],
    //     )
    // )
        // ** --- For Column --- **//
/*        body:Container(
          height: 300,
          width: 300,
          child: Column(
            //change horizontal in the row
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

           //change vertically in the row
           //crossAxisAlignment:  CrossAxisAlignment.center ,
           crossAxisAlignment:  CrossAxisAlignment.stretch ,
          children: [
            Text('A',style: TextStyle(fontSize: 25),),
            Text('B',style: TextStyle(fontSize: 25),),
            Text('C',style: TextStyle(fontSize: 25),),
            Text('D',style: TextStyle(fontSize: 25),),
            Text('E',style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
            },
            child: Text('Click')),
          ],
        )
    )*/

        body:Container(
          height: 300,
          //width: 300,
          child: Column(
            //change horizontal in the row
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
           mainAxisAlignment: MainAxisAlignment.start,

           //change vertically in the row
           //crossAxisAlignment:  CrossAxisAlignment.center ,
           // crossAxisAlignment:  CrossAxisAlignment.stretch ,
           // crossAxisAlignment:  CrossAxisAlignment.end ,
           crossAxisAlignment:  CrossAxisAlignment.start ,
          children: [
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                          onPressed: (){}, child: Text("Button 1")
                    ),
                    ElevatedButton(onPressed: (){}, child: Text("Button 2"))
                  ],
                ),
                Text('R1',style: TextStyle(fontSize: 25),),
                Text('R2',style: TextStyle(fontSize: 25),),
                Text('R3',style: TextStyle(fontSize: 25),),
                Text('R4',style: TextStyle(fontSize: 25),),
                Text('R5',style: TextStyle(fontSize: 25),),
              ],
            ),
            Text('A',style: TextStyle(fontSize: 25),),
            Text('B',style: TextStyle(fontSize: 25),),
            Text('C',style: TextStyle(fontSize: 25),),
            Text('D',style: TextStyle(fontSize: 25),),
            Text('E',style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
            },
            child: Text('Click')),
          ],
        )
    ));

  }
}
