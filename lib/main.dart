import 'package:flutter/material.dart';

void main() {
 runApp(MYmaterialApp());
}
// create material widget
class MYmaterialApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("Nagham APP"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: myBody(),
     ),
   );
  }

}
//create widget
class myBody extends StatelessWidget{
  int counter=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center, 
       children: [
         ElevatedButton(
              child: Text("Click"),
              onPressed: (){
                counter++;
                print("$counter ");
              }
         ),
         Text("Click to change counter +1:"),
         Text("$counter"),
       ],
     ),
   );
  }

}
