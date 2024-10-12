import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final growableList = <Widget>[];

  @override
  Widget build(BuildContext context ) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(title: Text('Testing')),
        body:ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                setState(() {
                  growableList.add(addwidget(title: 'Test1', colour: Colors.red));
                });
                },
                child: Text("tap here"),
              ),
            ),
            for(Widget item in growableList) item,
            
          ],
        )
      ),
      
    );

  }
} 

class addwidget extends StatelessWidget{
  addwidget({super.key, required this.title, required this.colour});

  String title;
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      child: Center(
        child: Text(title),
      ),
    );
  }

}