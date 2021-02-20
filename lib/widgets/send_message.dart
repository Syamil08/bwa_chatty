import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class SendMessage extends StatelessWidget {
  final String imageUrl;
  final String textMessage;
  final String time;

  SendMessage({this.imageUrl, this.textMessage, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 11,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
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
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
