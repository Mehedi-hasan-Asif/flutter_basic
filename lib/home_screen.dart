import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add)
        ],
      ),
      body: Center(
        child: Text(counter.toString(),style: TextStyle(
         fontSize: 48,

        ),),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: (){
                counter ++;
                setState(() {

                });
              },
            child: Icon(Icons.add),

          ),
      SizedBox(
        width: 10,
      ),
      FloatingActionButton(
            onPressed: (){
              counter --;
              setState(() {

              });
            },
            child: Icon(Icons.remove),

          ),
        ],
      ),
    );
  }
}
