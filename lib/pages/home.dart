import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_clone/pages/util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

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
      body: Column(
        children: [
          //STORIES
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BubbleStories(
                  text: 'hello',
                ),
                BubbleStories(
                  text: 'yoyoyo',
                ),
                BubbleStories(
                  text: 'heyhey',
                ),
                BubbleStories(
                  text: 'nicee',
                ),
                BubbleStories(
                  text: 'xyz',
                ),
                BubbleStories(
                  text: 'okbye',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
