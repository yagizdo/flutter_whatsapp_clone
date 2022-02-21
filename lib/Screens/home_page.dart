import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/Providers/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          title: Text('Chats'),
          leading: TextButton(
            child: Text('Edit'),
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
                icon: Icon(Icons.message),
                color: Colors.black,
              );
            })
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.circle,
                color: Colors.black,
                size: 30,
              ),
              label: 'Status'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
              label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings'),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
