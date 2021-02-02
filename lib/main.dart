import 'package:flutter/material.dart';
import 'package:portfolio/landingPage/landing_page.dart';
import 'package:portfolio/navBar/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(195, 20, 50, 1.0),
              Color.fromRGBO(36, 11, 54, 1.0)
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
                children: [
                  NavBar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                    child: LandingPage(),
                  )
                ],
          ),
        ),
      ),
    );
  }
}

