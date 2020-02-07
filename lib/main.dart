import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
} // use of lambda expression

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First Flutter App",
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
//        textTheme: TextTheme(
//          body1: GoogleFonts.aBeeZee(
//            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//          ), // to change font of the body
//        ),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: GoogleFonts.seymourOne(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          centerTitle: true,
          // backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Image.network(
              "https://miro.medium.com/max/2560/1*vgN2zojqiIYu23JPVuaSiA.jpeg",
              width: 280.0,
              height: 250.0),
        ), // Asset is internal resource
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.flash_on,
            //color: Colors.yellow,
          ),
        ),
        //backgroundColor: Colors.grey,
      ),
    );
  }
}
