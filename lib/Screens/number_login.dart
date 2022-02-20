import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var numbers = const <Widget>[
    Text('+90'),
    Text('+61'),
    Text('+16'),
    Text('+645'),
    Text('+86'),
    Text('+786'),
  ];

  String? selectedValue;
  var numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Your Phone Number'),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.white,
        actions: [
          TextButton(
              onPressed:
                  () {}, //numberController.text.contains('') ? null : () {},
              child: const Text('Done'))
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              'WhatsApp will send an SMS message to verify your phone number (carrier changes may apply).',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          // TODO Buraya numara kontrolü ekle ve done butonunun aktifleşme olayına bak
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: numberController,
              decoration: InputDecoration(hintText: 'Your phone number'),
              textAlign: TextAlign.center,
            ),
          )
          //ElevatedButton(onPressed: () {}, child: const Text('Select Number')),
        ],
      ),
    );
  }
}
