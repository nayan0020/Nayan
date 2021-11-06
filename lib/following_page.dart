import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/profilepage.dart';


class Following_page extends StatefulWidget {
  const Following_page({Key key}) : super(key: key);

  @override
  _Following_pageState createState() => _Following_pageState();
}

class _Following_pageState extends State<Following_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Color.fromRGBO(21, 21, 21, .6),
        ),
        iconSize: 25,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>ProfilePage(),
            ),
          );
        },
      ),
      title: Text(
        "Following Page",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color.fromRGBO(21, 21, 21, .6),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            Icons.refresh_outlined,
            color: Color.fromRGBO(20, 20, 20, .6),
          ),
          iconSize: 25,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Following_page(),
              ),
            );
          },
        ),
      ],
      backgroundColor: Color.fromRGBO(240, 240, 240, .6),
    ),
    );
  }
}

