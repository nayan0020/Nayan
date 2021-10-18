import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/edit_page.dart';
import 'package:information/follower_page.dart';
import 'package:information/following_page.dart';
import 'package:information/messenger_page.dart';
import 'package:information/post_page.dart';





class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 25,
        ),
        actions: [
          Container(
            height: 25,
            width: 105,
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
              top: 15,
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.lime.shade500,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.create_rounded,
                      size: 15,
                      color: Colors.black,
                    ),
                  ]),
            ),
          ),
        ],
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      //extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //Profile image, name, address container
              Container(
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      //Profile image
                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Nayan1.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(105, 107, 103, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(250, 251, 252, 1),
                        ),
                      ),

                      // Address and Name container
                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/2,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Name Text
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "Nayan Shaikh",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(34, 35, 40, 1),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              //Address Text
                              Text(
                                "Vill: Bamondanga, Post: Bamondanga Bazar-9240, Tana: Rupsha, Zila: Khulna, Bangladesh",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(45, 46, 47, 1),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),

              // User Bio Conatiner

              Container(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //Header Container in Bio

                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                          children: [
                            Text(
                              "Bio",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 19,
                                color: Color.fromRGBO(56, 60, 80, 1),
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Icon(
                              Icons.info_outline_rounded,
                              size: 19,
                              color: Color.fromRGBO(56, 60, 80, 1),
                            ),
                          ]
                      ),
                    ),

                    //Bio Container

                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "I Am Nayan Shaikh."
                            "I Am A Student On Azam Khan Commarce College",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(100, 120, 140, 1),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),

              //button container

              Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 17),
                  child: Align(
                    alignment: Alignment.center,
                  child: Wrap(
                    spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      direction: Axis.horizontal,
                      children:[

                        //post button container


                        Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/3.5,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 250, 250, .6),
                            border: Border.all(
                              color: Color.fromRGBO(31, 31, 31, 1),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder:
                              (context)=>Post_page(),
                              ),
                              );
                            },
                            icon: Icon(
                              Icons.post_add_sharp,
                              size: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Posts",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                          ),
                        ),
                        //following button container
                        Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/2.7,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(250, 250, 250, .6),
                              border: Border.all(
                                color: Color.fromRGBO(21, 21, 21, 1),
                                width: 3,
                                style: BorderStyle.solid,
                              )
                          ),
                          child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context)=>Messenger_page( ),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.message_outlined,
                              size: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Messenger",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(21, 21, 21, 1),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        //follower button container
                        Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 250, 250, .6),
                            border: Border.all(
                              color: Color.fromRGBO(21, 21, 21, 1),
                              width: 3,
                              style: BorderStyle.solid,
                            ) ,

                          ),
                          child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context)=>Follower_page(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.follow_the_signs_rounded,
                              size: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Follower",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                          ),
                        ),
                        //Messenger button container
                        Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width/2.7,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 250, 250, .6),
                            border: Border.all(
                              color: Color.fromRGBO(21, 21, 21, 1),
                              width: 3,
                              style: BorderStyle.solid,
                            ) ,

                          ),
                          child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder:
                                    (context)=>Following_page(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.add_circle,
                              size: 15,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            label: Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                          ),
                        ),
                      ]
                  )
              ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
