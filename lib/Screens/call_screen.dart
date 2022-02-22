import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:whatsapp_clone/Widgets/Call%20Screen/call_list.dart';

import '../Providers/theme_provider.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ToggleSwitch(
            customWidths: [100, 100],
            minHeight: 37,
            initialLabelIndex: 0,
            cornerRadius: 10,
            borderWidth: 1.5,
            activeBgColor: [HexColor('#007AFF')],
            totalSwitches: 2,
            labels: ['All', 'Missed'],
            customTextStyles: [
              TextStyle(color: Colors.white, fontSize: 16),
              TextStyle(color: Colors.white, fontSize: 16)
            ],
            onToggle: (index) {
              print('$index selected!');
            },
          ),
          toolbarHeight: 50,
          leading: TextButton(
            child: const Text(
              'Edit',
              style: TextStyle(fontSize: 18),
            ),
            onPressed: () {},
          ),
          actions: [
            Consumer<ThemeProvider>(builder: (context, theme, child) {
              return IconButton(
                onPressed: () {
                  ThemeProvider().readData('themeMode').then((value) {
                    value == 'light'
                        ? theme.setDarkMode()
                        : theme.setLightMode();
                  });
                },
                icon: SvgPicture.asset('lib/Assets/callicon.svg'),
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
              'Calls',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: const [
              Divider(
                color: Colors.grey,
                thickness: 0.5,
              )
            ],
          ),
          CallList(),
        ],
      ),
    );
  }
}
