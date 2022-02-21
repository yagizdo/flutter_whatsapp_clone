import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/Providers/theme_provider.dart';
import 'package:whatsapp_clone/Screens/call_screen.dart';
import 'package:whatsapp_clone/Screens/camera_screen.dart';
import 'package:whatsapp_clone/Screens/chatscreen.dart';
import 'package:whatsapp_clone/Screens/settings_screen.dart';
import 'package:whatsapp_clone/Screens/status_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _pages = <Widget>[
    StatusScreen(),
    CallScreen(),
    CameraScreen(),
    ChatScreen(),
    SettingsScreen(),
  ];
  int selectedIndex = 0;
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
                icon: SvgPicture.asset('lib/Assets/editicon.svg'),
                color: Colors.black,
              );
            })
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/Assets/statusicon.svg',
                height: 30,
                color: selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Status'),
          BottomNavigationBarItem(
              icon: selectedIndex == 1
                  ? SvgPicture.asset(
                      'lib/Assets/phoneselected.svg',
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'lib/Assets/phoneicon.svg',
                      height: 30,
                      color: HexColor('#979797'),
                    ),
              label: 'Calls'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'lib/Assets/cameraicon.svg',
                height: 30,
                color: HexColor('#979797'),
              ),
              label: 'Camera'),
          BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? SvgPicture.asset(
                      'lib/Assets/chatselected.svg',
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'lib/Assets/chaticon.svg',
                      height: 30,
                      color: HexColor('#979797'),
                    ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: selectedIndex == 4
                  ? SvgPicture.asset(
                      'lib/Assets/settingsselected.svg',
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'lib/Assets/settingsicon.svg',
                      height: 30,
                      color: HexColor('#979797'),
                    ),
              label: 'Settings'),
        ],
      ),
      body: _pages[selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
