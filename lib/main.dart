import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Mystate();
  }
}

class Mystate extends State<MyApp> {
  @override 
  int count = 0;
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text(
              "N.M.M App",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                child: Text("Click to +1",style: TextStyle(color:Colors.red,fontSize: 20 ),),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
              ),
              Text("Counter : $count",style: TextStyle(color: Colors.red,fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}
