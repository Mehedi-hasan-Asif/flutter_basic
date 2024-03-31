//Buttons(Elevated/Iconbutton/TextButton,Gesturedetection,Inkwell)//Text Field,richText
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

//colum=Vertically
//Row=Horizontally
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Home Screen',
            style: TextStyle(color: Colors.white),
          ),
          leading: Icon(Icons.home_filled),
          actions: [
            IconButton(
                onPressed: () {
                  //ScaffoldMessenger.of(context).showSnackBar(
                  //SnackBar(content: Text('You Are Gone'),
                  //backgroundColor: Colors.lightBlue,
                  //duration: Duration(seconds: 1),
                  //)
                  //);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title:
                              Text('Still Hope Something is BEtter Coocking'),
                        );
                      });
                },
                icon: Icon(Icons.add)),
          ],
        ),
        //backgroundColor: Colors.black54,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height:100,
                width:100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.black,width: 3),
                  image: DecorationImage(
                    image: AssetImage("images/download.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.black.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0,3)



                    ),
                  ]

                ),
                alignment: Alignment.center,
                child: Text('Cat',style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold
                ),),
              )
              /*ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 2,
                          color: Colors.purple,
                        )),
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    padding: EdgeInsets.all(15),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Text('Pressed Here')),
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    textStyle: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  onPressed: () {},
                  child: Text('TextButton')),
              IconButton(
                onPressed: () {
                  print('Alarm');
                },
                icon: Icon(Icons.access_time_filled_outlined),
                color: Colors.deepOrange,
              ),
              GestureDetector(
                onTap: () {
                  print('on Tap detected');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                child: Column(
                  children: [
                    Text(" Button"),
                    Icon(Icons.add_a_photo),
                    Row(
                      children: [
                        Text('World In the Air'),
                      ],
                    )
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.deepOrange,
                radius: 15,
                onTap: () {
                  print('on Tap detected');
                },
                onDoubleTap: () {
                  print('Double Tap');
                },
                child: Column(
                  children: [

                    Text(" Button"),
                    Icon(Icons.add_a_photo),
                    Row(
                      children: [
                        Text('World In the Air'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  //controller: TextEditingController(),
                  //enabled: false,
                  maxLength: 15,
                  style: TextStyle(

                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    color: Colors.orange,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 8,color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4,color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 8,color: Colors.red),
                  ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 8,color: Colors.green),

                ),
                    fillColor: Colors.purple,
                    prefixIcon: Icon(Icons.add_a_photo),
              )))

                    */
            ]
          ),
        ));
  }
}
