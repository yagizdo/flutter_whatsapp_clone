import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({Key? key}) : super(key: key);

  @override
  State<MyStatus> createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
  var themeMode;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Card(
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(
                  'lib/Assets/yagophoto.jpg',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'My Status',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      'Add to my status',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 30),
              child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('lib/Assets/camerabuttonicon.svg')),
            ),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset('lib/Assets/penbuttonicon.svg')),
          ],
        ),
      ),
    );
  }
}
