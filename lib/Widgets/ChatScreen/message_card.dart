import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  MessageCard(
      {Key? key,
      required this.name,
      required this.time,
      required this.message,
      required this.profilepic})
      : super(key: key);

  String name;
  String time;
  String message;
  String profilepic;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: Text(name),
            subtitle: Text(message),
            minVerticalPadding: 15,
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                profilepic,
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(time)],
            ),
          ),
        )
      ],
    );
    ;
  }
}
