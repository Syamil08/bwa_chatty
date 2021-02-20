import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:bwa_chatty/widgets/group_tile.dart';
import 'package:bwa_chatty/pages/chat_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profiles.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(fontSize: 16, color: lightBlue),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friends_1.png',
                        name: 'Joshuer',
                        text: 'Sorry, you’re not my ty...',
                        date: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friends_2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        date: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      GroupTile(
                        imageUrl: 'assets/images/groups_1.png',
                        groupName: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        date: '11:11',
                        unread: false,
                      ),
                      GroupTile(
                        imageUrl: 'assets/images/groups_3.png',
                        groupName: 'Angga',
                        text: 'Here here we can go...',
                        date: '7:11',
                        unread: true,
                      ),
                      GroupTile(
                        imageUrl: 'assets/images/groups_2.png',
                        groupName: 'Bentley',
                        text: 'The car which does not...',
                        date: '9:11',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
