import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/number_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        nextScreen: const LoginScreen(),
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1,),
              Image.asset('lib/Assets/wpicon.png',width: 100,height: 100,),
              const Spacer(flex: 1,),
              Column(
                children: [
                const Text('from',style: TextStyle(color: Colors.grey),),
                Image.asset('lib/Assets/metalogo.png',width: 80,height: 50,),
              ],),

            ],
          ),
        ),
        duration: 2000,
        splashIconSize: 1000,

      ),
    );
  }
}