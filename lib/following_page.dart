import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:information/models/models.dart';
import 'package:information/profilepage.dart';


List<FollowingModel> followingModel = [
  FollowingModel(
      userName: "Abdur Razzak",
      userProfileImageURL:
      "https://img1.hscicdn.com/image/upload/f_auto,t_gn_f_345/lsci/db/PICTURES/CMS/319600/319683.png",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Salman Shah",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/en/thumb/1/1e/SalmanShah%28actor%29Image.jpg/220px-SalmanShah%28actor%29Image.jpg",
      date: DateTime.now().day.toString()),
  FollowingModel(
      userName: "Amitabh Bachchan",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Indian_actor_Amitabh_Bachchan.jpg/225px-Indian_actor_Amitabh_Bachchan.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Sajeeb Wazed",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Sajeeb_Wazed_Joy_%281%29_%28cropped%29.jpg/220px-Sajeeb_Wazed_Joy_%281%29_%28cropped%29.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Faruq Mahfuz Anam",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Faruq_Mahfuz_Anam_in_Trination_Mega_Festival_-_Bangladesh_India_Pakistan_%288375647058%29.jpg/220px-Faruq_Mahfuz_Anam_in_Trination_Mega_Festival_-_Bangladesh_India_Pakistan_%288375647058%29.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Shakib Al Hasan",
      userProfileImageURL:
      "https://img1.hscicdn.com/image/upload/f_auto,t_gn_f_345/lsci/db/PICTURES/CMS/316500/316581.png",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Sheikh Hasina",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Sheikh_Hasina_in_London_2011.jpg/220px-Sheikh_Hasina_in_London_2011.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Shirin Sharmin Chaudhury",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Shirin_Sharmin_Chaudhury.JPG/220px-Shirin_Sharmin_Chaudhury.JPG",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Dipu Moni",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Dipu_Moni_February_2013_%288510153398%29.jpg/220px-Dipu_Moni_February_2013_%288510153398%29.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Afroza Sultana Ratna",
      userProfileImageURL:
      "https://m.media-amazon.com/images/M/MV5BMDg4NjA1YTYtMTk0My00ZGI1LTlkMzAtZDc0MDhlYWE1NTUzXkEyXkFqcGdeQXVyNDI3NjcxMDA@._V1_UY317_CR8,0,214,317_AL_.jpg",
      date: DateTime.now().hour.toString()),
  FollowingModel(
      userName: "Sabina Yasmin",
      userProfileImageURL:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Sabina_Yasmin%28%E0%A6%B8%E0%A6%BE%E0%A6%AC%E0%A6%BF%E0%A6%A8%E0%A6%BE_%E0%A6%87%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B8%E0%A6%AE%E0%A6%BF%E0%A6%A8%29_2.jpg/220px-Sabina_Yasmin%28%E0%A6%B8%E0%A6%BE%E0%A6%AC%E0%A6%BF%E0%A6%A8%E0%A6%BE_%E0%A6%87%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B8%E0%A6%AE%E0%A6%BF%E0%A6%A8%29_2.jpg",
      date: DateTime.now().hour.toString()),
];

class Following_page extends StatefulWidget {
  const Following_page({Key key}) : super(key: key);

  @override
  _Following_pageState createState() => _Following_pageState();
}

class _Following_pageState extends State<Following_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                builder: (context) => ProfilePage(),
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
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemCount: followingModel.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          "${followingModel[index].userProfileImageURL}"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 1.48,
                      child: RichText(
                        text: TextSpan(
                          text: "${followingModel[index].userName}\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(21, 21, 21, 1),
                            height: 1.3,
                          ),
                          children: [
                            TextSpan(
                              text: "${followingModel[index].date}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}