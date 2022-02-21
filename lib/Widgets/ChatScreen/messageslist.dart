import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.28,
      child: ListView.builder(
          itemCount: 22,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text('Yılmaz Yağız Dokumacı'),
                      subtitle: Text('Ben..Ben bir mesajım..'),
                      leading: CircleAvatar(
                        child: Image.asset(
                          'lib/Assets/yagophoto.jpg',
                        ),
                      ),
                      trailing: Column(
                        children: const [Text('12.41 pm')],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
