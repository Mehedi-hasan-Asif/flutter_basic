// Responsive Builder


import 'package:cached_network_image/cached_network_image.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

final lastpic= List.generate(24, (index) => 'https://picsum.photos/300/300?random=$index');

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Builder',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: MyHome(),

    );
  }
}
class MyHome extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ResponsiveBuilder(
        builder:(context,sizeInfo){
          return GridView.builder(
            itemCount: lastpic.length,
            itemBuilder: (context,index)=>
            CachedNetworkImage(imageUrl: lastpic[index],imageBuilder: (context,provider)=>Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: provider,
                  fit: BoxFit.cover
                )
              ),

            ),
              placeholder: (context,url)=>Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget:(context,url,err)=>Icon(Icons.error) ,
              ),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: sizeInfo.deviceScreenType == DeviceScreenType.desktop ? 6
                :sizeInfo.deviceScreenType == DeviceScreenType.tablet ? 3
                :sizeInfo.deviceScreenType == DeviceScreenType.watch? 1:2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4
            ),
          );
        },
      ),
    ));
  }
}

