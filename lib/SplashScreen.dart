import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), ()=>Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) =>HomePage()),
            (route) => false));
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('My Work'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(height: 50,),
            Text("Welcome To My Apps", style:  TextStyle(color:Colors.white,fontSize: 30),),
            SizedBox(height: 50,),
          Image.network('https://pngimg.com/uploads/thank_you/thank_you_PNG13.jpg',
            height: 100, width: 100,),

            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
