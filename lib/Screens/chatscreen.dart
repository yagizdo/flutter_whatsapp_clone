import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../Providers/theme_provider.dart';
import '../Widgets/ChatScreen/messageslist.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 50,
          leading: TextButton(
            child: Text(
              'Edit',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {},
          ),
          actions: [
            Consumer<ThemeProvider>(builder: (context, theme, child) {
              return IconButton(
                onPressed: () {
                  ThemeProvider.readData('themeMode').then((value) {
                    value == 'light'
                        ? theme.setDarkMode()
                        : theme.setLightMode();
                  });
                },
                icon: SvgPicture.asset('lib/Assets/editicon.svg'),
                color: Colors.black,
              );
            })
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Chats',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: TextButton(
                      child: const Text(
                        'Broadcast Lists',
                        style: TextStyle(fontSize: 17),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: TextButton(
                      child: const Text(
                        'New Group',
                        style: TextStyle(fontSize: 17),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              )
            ],
          ),
          MessagesList(),
        ],
      ),
    );
  }
}
