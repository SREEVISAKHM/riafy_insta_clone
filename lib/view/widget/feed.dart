import 'package:flutter/material.dart';

import 'package:riafy_instagram_clone/model/view_response.dart';
import 'dart:math';

import 'package:riafy_instagram_clone/view/comment_view.dart';

class Feed extends StatefulWidget {
  final ViewResponse viewResponse;

  Feed({Key? key, required this.viewResponse}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.viewResponse.id,
                      style: TextStyle(
                          fontSize: 15, color: Theme.of(context).accentColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: pi / 2,
                      child: Icon(Icons.keyboard_control),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(widget.viewResponse.highThumbnail),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.comment_outlined,
                      size: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.send_rounded,
                      size: 26,
                    ),
                  ],
                ),
                Icon(Icons.bookmark),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                ),
                Positioned(
                  left: 12,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                  ),
                ),
                Positioned(
                  left: 25,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.yellow,
                  ),
                ),
                Positioned(
                  left: 60,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Text('vjhfgwjkhefkwh '),
                        Text(
                          'visakh',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(' and '),
                        Text(
                          '6000 others',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " ${widget.viewResponse.id} ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Flexible(
                    child: Text(
                  '${widget.viewResponse.title} ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )),
              ],
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  '#varunadithya',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Text(
                ' more',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 60,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CommentView(),
                ),
              );
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'View all 900 comments',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
