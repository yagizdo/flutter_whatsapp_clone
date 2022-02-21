import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height / 1.51,
      child: ListView.builder(
          itemCount: 22,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Yılmaz Yağız Dokumacı'),
                    subtitle: const Text('Ben..Ben bir mesajım..'),
                    minVerticalPadding: 15,
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'lib/Assets/yagophoto.jpg',
                      ),
                    ),
                    trailing: Column(
                      children: const [Text('12.41 pm')],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
