import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserPosts extends StatelessWidget {
  String name;

  UserPosts({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        //POST
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        //below the post -> buttons and comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark)
          ]),
        ),
        //Liked by ...
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text('hehe ', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('and '),
              Text('others', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),

        //captions
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: RichText(
            text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text:
                          'wow your post looks so amazing and beautiful! Nice one🔥'),
                ]),
          ),
        ),
        //comments
      ],
    );
  }
}
