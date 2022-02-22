import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CallCard extends StatelessWidget {
  CallCard(
      {Key? key,
      required this.name,
      required this.counter,
      required this.info,
      required this.time,
      required this.imageasset})
      : super(key: key);

  String name;
  int counter;
  String info;
  String time;
  String imageasset;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ListTile(
          title: Text(
            '$name ${counter == 0 ? '' : '($counter)'}',
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Row(
            children: [
              SvgPicture.asset('lib/Assets/littlephoneicon.svg'),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(info),
              )
            ],
          ),
          minVerticalPadding: 15,
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              imageasset,
            ),
          ),
          trailing: SizedBox(
            width: MediaQuery.of(context).size.width / 3.83,
            child: Row(
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 12.5),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('lib/Assets/infoicon.svg'))
              ],
            ),
          ),
        ))
      ],
    );
  }
}
