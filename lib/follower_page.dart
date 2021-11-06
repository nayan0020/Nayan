import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/profilepage.dart';


class Follower_page extends StatefulWidget {
  const Follower_page({Key key}) : super(key: key);

  @override
  _Follower_pageState createState() => _Follower_pageState();
}

class _Follower_pageState extends State<Follower_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text(
        "Follower Page",
        style: TextStyle(
          color: Color.fromRGBO(25, 25, 35, .6),
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Color.fromRGBO(25, 25, 35, .6),
        ),
        iconSize: 25,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=>ProfilePage(),
            ),
          );
        },
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(25, 25, 35, .6),
            ),
            iconSize: 25,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>Follower_page(),
                ),
              );
            }
        ),
      ],
      backgroundColor: Color.fromRGBO(240, 240, 240, .6),
    ),
      body: Center(
        child: Text(
            "Follower Page"
        ),
      ),
    );
  }
}
