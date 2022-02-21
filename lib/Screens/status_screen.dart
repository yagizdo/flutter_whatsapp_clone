import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Status%20Page/mystatus.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leadingWidth: 100,
        leading: TextButton(
          child: Text(
            'Privacy',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Text(
              'Status',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          MyStatus(),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Card(
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  'No recent updates to show right now',
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
