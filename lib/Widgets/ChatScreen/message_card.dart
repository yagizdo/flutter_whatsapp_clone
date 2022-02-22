import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hexcolor/hexcolor.dart';

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
          child: Slidable(
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                    backgroundColor: HexColor('#C6C6CC'),
                    foregroundColor: Colors.white,
                    label: 'More',
                    icon: Icons.more_horiz,
                    onPressed: (context) {}),
                SlidableAction(
                    backgroundColor: HexColor('#3E70A7'),
                    label: 'Archive',
                    icon: Icons.archive,
                    onPressed: (context) {}),
              ],
            ),
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
          ),
        )
      ],
    );
    ;
  }
}
