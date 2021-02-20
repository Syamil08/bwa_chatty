import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ReceiveMessage extends StatelessWidget {
  final String imageUrl;
  final String textMessage;
  final String time;

  ReceiveMessage({this.imageUrl, this.textMessage, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: bubleChatBg,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  textMessage,
                  style: titleMessage,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  time,
                  style: subtitleTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
