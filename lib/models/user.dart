import 'package:flutter/material.dart';

class User {
  final int id;
  final String userName;
  final String imgUrl;
  final Icon icon = const Icon(Icons.place_outlined);

  User({
    required this.id,
    required this.userName,
    required this.imgUrl,
  });
}

User user0 =
    User(id: 0, userName: 'your story', imgUrl: 'assets/userImg/1.png');
User user1 = User(id: 1, userName: 'med___69', imgUrl: 'assets/userImg/1.png');
User user2 = User(id: 2, userName: 'yoruvalo', imgUrl: 'assets/userImg/1.png');
User user3 = User(id: 3, userName: 'daniel', imgUrl: 'assets/userImg/1.png');
User user4 = User(id: 4, userName: 'cr7', imgUrl: 'assets/userImg/1.png');
User user5 = User(id: 5, userName: 'siuuu', imgUrl: 'assets/userImg/1.png');
User user6 = User(id: 6, userName: 'kaka', imgUrl: 'assets/userImg/1.png');
User user7 = User(id: 7, userName: 'carvajal', imgUrl: 'assets/userImg/1.png');
