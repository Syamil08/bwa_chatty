import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/pages/chat_page.dart';

class GroupTile extends StatelessWidget {
  final String imageUrl;
  final String groupName;
  final String text;
  final String date;
  final bool unread;

  GroupTile({this.imageUrl, this.groupName, this.text, this.date, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  groupName,
                  style: titleTextStyle,
                ),
                Text(
                  text,
                  style: unread
                      ? subtitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subtitleTextStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            date,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
    ;
  }
}
