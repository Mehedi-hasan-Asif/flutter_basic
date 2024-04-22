import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).displayFeatures);
    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.displayFeaturesOf(context));
    print(MediaQuery.sizeOf(context));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home'),
      ),
      // body: Center(
      //   child: Wrap(
      //     alignment: WrapAlignment.center,
      //     crossAxisAlignment: WrapCrossAlignment.start,
      //     spacing: 4,
      //     children: [
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //     ],
      //   ),
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     // return Center(
      //     //   child: Text(constraints.maxHeight.toString()),
      //     // );
      //     if(constraints.maxWidth <400){
      //       return const Center(child: Text('Mobile'),);
      //
      //     }else if(constraints.maxWidth <600){
      //       return const Center(child: Text('Tab'),);
      //     }else if(constraints.maxWidth <800){
      //       return const Center(child: Text('Laptop'),);
      //     }
      //     return const Center(child: Text('Desktop'),);
      //   },
      // ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation==Orientation.landscape){
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.green,
            );
          }else{
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueGrey,
            );
          }
        },
      ),
    );
  }
}
