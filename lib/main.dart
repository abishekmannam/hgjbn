import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var  items = <String>[];
  var doneitems = <String>[];

  final myController = TextEditingController();

  void addnew(String newone){
    items.add(newone);
    setState(() {
      myController.clear();
    });
  }

  void done(int index){

    doneitems.add(items[index]);
    items.removeAt(index);
    setState(() {
    });

  }

  void delete(int index){
    doneitems.removeAt(index);
    setState(() {
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To-Do",
      home: DefaultTabController(
        length: 2,

        child: Scaffold(
          appBar: AppBar(
            title: Text("To-Do List"),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.check_box_outline_blank),
                Icon(Icons.history),
                
              ]
            ),
            ),

          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: items.length,
                
                itemBuilder: (context, index) {
                  return ListTile(
                   leading: ElevatedButton(
                      onPressed: () => done(index),
                      child: Icon(Icons.check_box_outline_blank),
                    ),
                    title: Text(items[index]),
                  );
                },
              ),
              
              ListView.builder(
                itemCount: doneitems.length,
                
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ElevatedButton(
                    onPressed: () => delete(index),
                    child: Icon(Icons.done),
                    ),
                  title: Text(doneitems[index]),
                );
              },
              ),
            ]
            ),
          
          floatingActionButton: Row(children: [
            Expanded(child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter new item',
              ),
              controller: myController,
            ),
            )),

            ElevatedButton(
              onPressed: () => addnew(myController.text), 
              child: Icon(Icons.accessibility_new_sharp),
            )
          ],),
        ),

        

      )
      
    );
  }
}
