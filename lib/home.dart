import 'package:flutter/material.dart';
import 'package:flutter_basic/profile.dart';
import 'package:flutter_basic/setting.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Setting();
              }),
              );
            }, child: Text('Go to Settings')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(userName: 'Asif',),));
            }, child:Text('Go to Profile'))
          ],
        ),

      ),


    );
  }
}
