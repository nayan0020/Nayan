import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/models/models.dart';
import 'package:information/profilepage.dart';


List<Postmodel> postmodels = [
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Azam Khan Commarce College", address: "Vill: Bamondanga, Tana: Rupsha, Zila: Khulna, Bangladesh", likes: 34, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Khulna Government Mahila College", address: "Jalil - Sarani, Khulna,Khulna,Bangaldesh", likes: 34, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Khulna College", address: "Seikh Para Main Rd, Khulna,Khulna,Bangladesh", likes: 234, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Ahsanullah College", address: "KDA Ave, Khulna,Khulna,Bangladesh", likes: 57, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Govt. Brajalal (BL) College", address: "Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh", likes: 56, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Govt. M. M. City College", address: "300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh", likes: 65, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Khulna Public College", address: "public college, road, Khulna-9000,Khulna,Bangladesh", likes: 67, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Khulna Government College", address: "Hasanbag Road, Khulna,Khulna,Bangladesh", likes: 76, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Government Sundarban Adarsha College", address: "91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh", likes: 3343, postImageURL: null),
  Postmodel(username: "Nayan Shaikh", profileImageURL: "images/Nayan1.jpg", caption: "Khulna Islamia Degree College", address: " M A Bari St, Khulna,Khulna,Bangladesh", likes: 343, postImageURL: null),
];





class Post_page extends StatefulWidget {
  const Post_page({Key key}) : super(key: key);

  @override
  _Post_pageState createState() => _Post_pageState();
}

class _Post_pageState extends State<Post_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(25, 25, 45, .6),
          ),
          iconSize: 25,
        ),
        title: Text(
          "Posts Page",
          style: TextStyle(
            color: Color.fromRGBO(25, 25, 45, .6),
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Post_page(),
                ),
              );
            },
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(25, 25, 45, .6),
            ),
            iconSize: 25,
          ),
        ],
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.centerLeft,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: postmodels.length,
            itemBuilder: (BuildContext context, int index) {
              return SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(122, 245, 24, .1),
                          Color.fromRGBO(122, 245, 24, .4),
                        ]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Header Row profile image
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage(
                                "${postmodels[index].profileImageURL}"),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  text: "${postmodels[index].username}\n",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}  ${DateTime.now().hour}",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Address Row and Caption taking column

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 9,
                          child: Column(
                            children: [
                              // Addtess row

                              Container(
                                height: MediaQuery.of(context).size.height / 30,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 15,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 3),
                                      child: Text(
                                        "${postmodels[index].address}",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(0, 0, 0, .6),
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Caption Container

                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height / 25,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "${postmodels[index].caption}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Post image container
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "${postmodels[index].postImageURL}"),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      //share ,comments and likes button padding
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //likes button container

                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      CupertinoIcons.heart,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                      size: 15,
                                    ),
                                    Text(
                                      "${postmodels[index].likes} likes",
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //Comment button container

                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      CupertinoIcons.chat_bubble,
                                      size: 15,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    Text(
                                      "Comments",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //Spread Button container

                            Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 3.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  width: 3,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.share_outlined,
                                      size: 15,
                                      color: Color.fromRGBO(0, 0, 0, .6),
                                    ),
                                    Text(
                                      "Spread",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, .6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}