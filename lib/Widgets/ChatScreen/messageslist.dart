import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/ChatScreen/message_card.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height / 1.51,
      child: ListView(
        children: [
          MessageCard(
            name: 'Yılmaz Yağız Dokumacı',
            message: 'PLUS ULTRA!!',
            time: '13.31',
            profilepic: 'lib/Assets/yagophoto.jpg',
          ),
          MessageCard(
            name: 'Oğuzhan İnce',
            message: 'Abi bizim şirkete gelsene',
            time: '00.31',
            profilepic: 'lib/Assets/oguzprofile.jpeg',
          ),
          MessageCard(
            name: 'Ecem Bostancıoğlu',
            message: 'We are dream team',
            time: '14.45',
            profilepic: 'lib/Assets/ecemprofile.jpeg',
          ),
          MessageCard(
            name: 'Pala',
            message: 'Sadece ölüler görür..',
            time: '19.32',
            profilepic: 'lib/Assets/pala.jpg',
          ),
          MessageCard(
            name: 'Elon Musk',
            message: 'Yağız abi kripto para tavsiyesi var mı?',
            time: '20.08',
            profilepic: 'lib/Assets/elonmusk.jpg',
          ),
          MessageCard(
            name: 'Michael Jordan',
            message: 'Ben bile 1v1\'de seni yenemem..',
            time: '20.08',
            profilepic: 'lib/Assets/jordan.jpg',
          ),
          MessageCard(
            name: 'Kobe Bryant',
            message: 'Rest in Peace..',
            time: '08.24',
            profilepic: 'lib/Assets/kobebryant.jpg',
          ),
        ],
      ),
    );
  }
}
