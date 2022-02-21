import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/Screens/home_page.dart';
import 'package:whatsapp_clone/Utils/routes.dart';

import 'Providers/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
    create: (_) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, state, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: state.getTheme(),
        onGenerateRoute: Routes.generateRoute,
        home: HomePage(),
        /*home: AnimatedSplashScreen(
          nextScreen: const LoginScreen(),
          splash: Center(
            child: Container(
              alignment: Alignment.center,
              //TODO add dark mode check for splash screen
              */ /*color: state.getTheme().toString() == 'light'
                  ? Colors.white
                  : Colors.black,*/ /*
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Image.asset(
                    'lib/Assets/wpicon.png',
                    width: 100,
                    height: 100,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Column(
                    children: [
                      const Text(
                        'from',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Image.asset(
                        'lib/Assets/metalogo.png',
                        width: 80,
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          duration: 2000,
          splashIconSize: 1000,
        ),*/
      ),
    );
  }
}
