import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingCard extends StatelessWidget {
  SettingCard({Key? key, required this.iconsvg, required this.title})
      : super(key: key);

  String title;
  String iconsvg;
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
      ),
      leading: SvgPicture.asset(iconsvg),
    );
  }
}
