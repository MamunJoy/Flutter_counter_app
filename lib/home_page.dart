
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Biggenning"),
        backgroundColor: Colors.orangeAccent,
        leading: Icon(Icons.arrow_back) ,
        actions: [
          Icon(Icons.search),
          Icon(Icons.person)
        ],
      ),

      body: Center(
        child: Container(
          child: Text(number.toString(),
          style: TextStyle(
              fontSize: 18.0,
          ),),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){

          setState(() {
            number++;
            print(number);

          });


        },
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        tooltip: "Increment",

      ),
    );
  }
}
