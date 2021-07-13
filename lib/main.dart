import 'package:flutter/material.dart';
import 'package:flutter_app/desktop.dart';
import 'package:flutter_app/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:Builder(
        builder: (BuildContext context){
          MediaQuery.of(context).size.width;
          if(MediaQuery.of(context).size.width <= 560)
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.7
                ),
                child: MobileScreen());

          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.5,
              ),
              child: DesktopScreen());
        },
      )
      // LayoutBuilder(builder:(BuildContext context , BoxConstraints constraints) {
      //   print(constraints.minWidth.toInt());
      //   if(constraints.minWidth.toInt() <= 560)
      //     return MobileScreen();
      //   return DesktopScreen();
      // }),
    );
  }
}
