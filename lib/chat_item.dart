import 'dart:html';
import 'text_styles.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final leftSection = new Container(
      child: new CircleAvatar(
    backgroundImage: NetworkImage(
        'https://pbs.twimg.com/profile_images/1494626028362387458/mzYKHWjT_400x400.jpg'),
    backgroundColor: Colors.lightGreen,
    radius: 24.0,
  ));

  final middleSection = new Expanded(
      child: new Container(
    padding: EdgeInsets.only(left: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          'Name',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ), // Username
        Text('Hello There, Whatsup!',
            style: TextStyle(color: Colors.grey)), // Message
      ],
    ),
  ));

  final rightSection = Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Text(
        "10:20",
        style: TextStyle(
          color: Colors.lightGreen,
          fontSize: 12.0,
        ),
      ),

      CircleAvatar(
        backgroundColor: Colors.lightGreen[300],
        radius: 10.0,
        child: Text(
          "2",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        ),
      ), // Notification Blob,
    ],
  ));

  final backgroundImage = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://pbs.twimg.com/media/FKdHziYXwAUM5es?format=jpg&name=large'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6), BlendMode.luminosity),
      ),
    ),
  );

  final onTopContent = Container(
      height: 80.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Trending this week",
            style: bigHeaderTextStyle,
          ),
          Text(
            "Popular Restaurants around you",
            style: descTextStyle,
          ),
          Container(
            height: 2.0,
            width: 150.0,
            color: Colors.redAccent,
          ),
          Text(
            "30 PLACES",
            style: footerTextStyle,
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 250.0,
      child: Stack(
        children: <Widget>[
          backgroundImage,
          onTopContent,
        ],
      ),

      // child: Row(
      //   children: <Widget>[
      //     leftSection,
      //     middleSection,
      //     rightSection,
      //   ],
      // ),
    );
  }
}
