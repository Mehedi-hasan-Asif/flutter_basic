//TExt/Materiall App/Scaffold/Center/Image/Icon
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Hello World'),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black54,
        body: Center(
            /*  child: Text(
            'Hello World. We are starting our new Flutter Applicationn Today.Everyone Welcome oue new Application',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              backgroundColor: Colors.purple,
              color: Colors.blue,
              overflow: TextOverflow.ellipsis,
            ),
          ),

         */
            //child: Icon(Icons.android,size: 84,color: Colors.blue,),
          //child: Image.network('https://images.app.goo.gl/NPMLaUwzh6JeKXSt7'),
          child: Image.asset('images/download.jpeg',width: 300,height: 300,fit: BoxFit.cover,),
            ));
  }
}
