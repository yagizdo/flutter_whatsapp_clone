import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Settings%20Screen/settings_title.dart';

import '../Widgets/Settings Screen/setting_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SettingsTitle(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      SettingCard(
                        title: 'Starred Messages',
                        iconsvg: 'lib/Assets/starredicon.svg',
                      ),
                      SettingCard(
                        title: 'WhatsApp Web/Desktop',
                        iconsvg: 'lib/Assets/wpdesktopicon.svg',
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      SettingCard(
                        title: 'Account',
                        iconsvg: 'lib/Assets/accounticon.svg',
                      ),
                      SettingCard(
                        title: 'Chats',
                        iconsvg: 'lib/Assets/chatsicon.svg',
                      ),
                      SettingCard(
                        title: 'Notifications',
                        iconsvg: 'lib/Assets/notificons.svg',
                      ),
                      SettingCard(
                        title: 'Data and Storage Usage',
                        iconsvg: 'lib/Assets/dataicon.svg',
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      SettingCard(
                        title: 'Help',
                        iconsvg: 'lib/Assets/helpicon.svg',
                      ),
                      SettingCard(
                        title: 'Tell a Friend',
                        iconsvg: 'lib/Assets/friendicon.svg',
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
