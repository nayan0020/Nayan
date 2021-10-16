import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/edit_page.dart';


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
          onPressed: (){
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
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>EditPage(),
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
                      fontSize:15,
                      fontWeight: FontWeight.w400,
                       color: Colors.black,
                    ),
                    ),
                    Icon( Icons.create_rounded,
                    size:15,
                    color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
        ],
        title:Text("Profile Page",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        ) ,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //profile image, name, address container

              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  //Profile image
                    Container(

                      height: MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width/3,
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
                        color:Color.fromRGBO(250, 251, 252, 1) ,
                      ) ,

                    ),
                    //Address and Name container

                    Container(
                      height: MediaQuery.of(context).size.height/4,
                      width: MediaQuery.of(context).size.width/2,
                      child: Align(
                        alignment: Alignment.centerLeft,

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //Name Text
                          Padding(
                          padding:const EdgeInsets.only(right:20),

                           child: Text(
                            "Nayan Shaikh",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(36, 35, 40, 1),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          ),
                          //Address Text
                         Text(
                            "Vill: Bamondanga, Post: Bamondanga Bazar-9240, Tana: Rupsha, Zila: Khulna, Bangladesh",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(45, 46, 47, 1),

                          ),
                            textAlign: TextAlign.start,
                          ),

                        ],
                      ),
                      ),
                    ),
                  ],
                ),
              ),

              //User Bio Container

              Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    //Header Conainer in Bio

                    Container(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width,

                      child: Row(
                        children: [
                          Text ("Bio",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(56, 60, 80, 1),
                          ),
                          ),
                          SizedBox(width: 15,),
                          Icon(Icons.info_outline_rounded,
                          size: 20,
                          color: Color.fromRGBO(56, 60, 80, 1
                          ),
                          ),
                        ],
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
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(100, 120, 140, 1),
                        ),
                        textAlign: TextAlign.start,
                      ),

                    ),
                  ],
                ),
              ),
              Container(

              ),
            ],
          ),
        ),
      ),
    );
  }
}
