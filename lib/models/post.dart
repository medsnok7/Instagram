import 'package:instagram/models/user.dart';

class Post {
  final User user;
  final String postImg;
  final String description;
  final User likedUser;

  Post({
    required this.user,
    required this.postImg,
    required this.description,
    required this.likedUser,
  });
}

Post post0 = Post(
  user: user0,
  postImg: "assets/postImg/0.jpg",
  description: "im feeling super light today",
  likedUser: user5,
);
Post post1 = Post(
  user: user1,
  postImg: "assets/postImg/1.png",
  description: "an angel can become a devil too",
  likedUser: user7,
);
Post post2 = Post(
  user: user2,
  postImg: "assets/postImg/2.jpg",
  description: "muchas gracias aficion estas es para vosotros siuuu",
  likedUser: user6,
);
Post post3 = Post(
  user: user6,
  postImg: "assets/postImg/3.jpg",
  description: "break down break down let the voice of love take you higher",
  likedUser: user1,
);
Post post4 = Post(
  user: user4,
  postImg: "assets/postImg/4.jpg",
  description: "im fed up please can u work for fucks sake",
  likedUser: user2,
);
Post post5 = Post(
  user: user7,
  postImg: "assets/postImg/5.jpg",
  description: "im fed up please can u work for fucks sake",
  likedUser: user1,
);

Post post6 = Post(
  user: user5,
  postImg: "assets/postImg/6.jpg",
  description: "im fed up please can u work for fucks sake",
  likedUser: user4,
);
