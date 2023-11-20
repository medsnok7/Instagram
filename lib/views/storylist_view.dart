import 'package:flutter/material.dart';
import 'package:instagram/models/colors.dart';
import 'package:instagram/views/story_pic.dart';

import '../models/story.dart';

class StoryList extends StatefulWidget {
  const StoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<StoryList> createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: ((BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  index != 0
                      ? InkWell(
                          onTap: () async {
                            setState(() {
                              currentIndex = index;
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const StoryPic()),
                                  ));
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              index != currentIndex
                                  ? Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        gradient: const LinearGradient(
                                            colors: [
                                              Colors.red,
                                              Colors.orange,
                                              Colors.yellow,
                                              Colors.green,
                                              Colors.blue,
                                              Colors.deepPurple,
                                              Colors.purple,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight),
                                      ),
                                    )
                                  : Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        gradient: const LinearGradient(
                                            colors: [
                                              Colors.grey,
                                              Colors.white,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight),
                                      ),
                                    ),
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                    image: AssetImage(stories[index].imgUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : InkWell(
                          onTap: () {},
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                    image: AssetImage(stories[index].imgUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 40, top: 40),
                                child: const Icon(
                                  Icons.add_a_photo,
                                  color: Colors.black,
                                  shadows: [
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 1.5,
                                      offset: Offset(1.5, 1.5),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                  Text(
                    stories[index].userName,
                    style: const TextStyle(color: titleColor),
                  )
                ],
              ),
            );
          })),
    );
  }
}
