import 'package:flutter/cupertino.dart';


class Postmodel {
  Postmodel(
      {@required this.username,
        @required this.profileImageURL,
        @required this.caption,
        @required this.address,
        @required this.likes,
        @required this.postImageURL});

  String username;
  String profileImageURL;
  String caption;
  int likes;
  String postImageURL;
  String address;
}