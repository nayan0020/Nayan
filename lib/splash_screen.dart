import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/profilepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
      height:MediaQuery.of(context).size.height ,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          margin: EdgeInsets.only(top:40,
          ),
          height: MediaQuery.of(context).size.height/5,
          width: MediaQuery.of(context).size.width/2.5,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color.fromRGBO(
                82, 122, 77, 1),
                width: 3,
                style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("images/Nayan.jpg"),
                  fit: BoxFit.fill,
                ),
          ),
        ),
        //Text Container
        Container(
          height: MediaQuery.of(context).size.height/2.5,
          width: MediaQuery.of(context).size.width/1.5,
          margin: EdgeInsets.only(bottom:30,
          ),
          child: Text (
            "Welcome To Flutter Advance Design Course."
            "This courses created by an ICT Division Bangladesh."
            "Let's Enter in this course.",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              color: Color.fromRGBO(0, 0, 255, 1),
              wordSpacing: 2,
              //decoration: TextDecoration.none,
              //decorationStyle: TextDecorationStyle.wavy,
              //decorationColor: Color.fromRGBO(0, 0, 255, 1),
              //decorationThickness: 3,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        //Button Container Inkwell
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ProfilePage(),
          ),
          );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            height: MediaQuery.of(context).size.height/13 ,
            width:MediaQuery.of(context).size.width/3.5 ,
            decoration: BoxDecoration(
              border: Border.all(
              color: Color.fromRGBO(0, 0, 255, 1),
              width: 3,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(103, 123, 235, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text ("Start",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),

                  ),
                  ),
                Icon(Icons.arrow_forward_ios_rounded,
                size: 15,
                color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ],
            ),
            ),
        ),
      ],
      ),
      ),
    );
  }
}
