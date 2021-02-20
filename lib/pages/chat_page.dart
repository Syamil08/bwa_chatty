import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/receive_message.dart';
import 'package:bwa_chatty/widgets/send_message.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget chatField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Type message...',
                    hintStyle: TextStyle(fontSize: 16)),
              ),
            ),
            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Image.asset(
                'assets/images/sendbtn.png',
                width: 45,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: chatField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: chatPage,
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/images/groups_1.png',
                  height: 55,
                  width: 55,
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Jakarta Fair',
                      style: titleTextStyle,
                    ),
                    Text(
                      '14,209 members',
                      style: subtitleTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/images/call_btn.png',
                  height: 55,
                  width: 55,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_1.png',
                      textMessage: 'How are you?',
                      time: '2:30',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Find here :p',
                      time: '3:11',
                    ),
                    SendMessage(
                      imageUrl: 'assets/images/profiles.png',
                      textMessage: 'How are you?',
                      time: '2:30',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Love them',
                      time: '23:11',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Love them',
                      time: '23:11',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Love them',
                      time: '23:11',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Love them',
                      time: '23:11',
                    ),
                    ReceiveMessage(
                      imageUrl: 'assets/images/friends_2.png',
                      textMessage: 'Love them',
                      time: '23:11',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
