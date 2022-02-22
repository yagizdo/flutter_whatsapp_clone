import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/Providers/theme_provider.dart';

class SettingsTitle extends StatelessWidget {
  const SettingsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1,
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
                padding: const EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Yılmaz Yağız',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'www.yagizdokumaci.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('lib/Assets/camerabuttonicon.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child:
                    Consumer<ThemeProvider>(builder: (context, theme, child) {
                  return GestureDetector(
                      onTap: () {
                        ThemeProvider().readData('themeMode').then((value) {
                          value == 'light'
                              ? theme.setDarkMode()
                              : theme.setLightMode();
                        });
                      },
                      child: SvgPicture.asset(
                        'lib/Assets/darkmodeicon.svg',
                        width: 20,
                        color: Theme.of(context).secondaryHeaderColor,
                      ));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
