import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_clone/pages/util/bubble_stories.dart';
import 'package:insta_clone/pages/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people = ['hello', 'yoyoyo', 'heyhey', 'nicee', 'xyz', 'okbye'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share),
                ],
              )
            ],
          )),
      body: Column(children: [
        //STORIES
        // ignore: sized_box_for_whitespace
        Container(
          height: 130,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              }),
        ),
        //POSTS
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return UserPosts(name: people[index]);
            },
          ),
        )
      ]),
    );
  }
}
