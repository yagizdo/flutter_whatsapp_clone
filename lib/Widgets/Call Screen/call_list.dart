import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Call%20Screen/call_card.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.4,
      child: ListView(
        children: [
          CallCard(
              name: 'Yılmaz Yağız Dokumacı',
              counter: 2,
              info: 'Missed',
              time: '12.41',
              imageasset: 'lib/Assets/yagophoto.jpg'),
          CallCard(
              name: 'Oğuzhan İnce',
              counter: 31,
              info: 'Outgoing',
              time: 'Yesterday',
              imageasset: 'lib/Assets/oguzprofile.jpeg'),
          CallCard(
              name: 'Ecem Bostancıoğlu',
              counter: 0,
              info: 'Missed',
              time: '11.30',
              imageasset: 'lib/Assets/ecemprofile.jpeg'),
          CallCard(
              name: 'Elon Musk',
              counter: 90,
              info: 'Incoming',
              time: '00.20',
              imageasset: 'lib/Assets/elonmusk.jpg'),
          CallCard(
              name: 'Kobe Bryant',
              counter: 0,
              info: 'Missed',
              time: '08.24',
              imageasset: 'lib/Assets/kobebryant.jpg'),
          CallCard(
              name: 'Michael Jordan',
              counter: 4,
              info: 'Outgoing',
              time: '17.32',
              imageasset: 'lib/Assets/jordan.jpg'),
          CallCard(
              name: 'Dash',
              counter: 10,
              info: 'Missed',
              time: '20.18',
              imageasset: 'lib/Assets/dartdash.jpg'),
          CallCard(
              name: 'Pala',
              counter: 999,
              info: 'Incoming',
              time: '12.41',
              imageasset: 'lib/Assets/pala.jpg'),
        ],
      ),
    );
  }
}
