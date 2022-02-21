import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text('Status'),
        leadingWidth: 100,
        leading: TextButton(
          child: Text(
            'Privacy',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
