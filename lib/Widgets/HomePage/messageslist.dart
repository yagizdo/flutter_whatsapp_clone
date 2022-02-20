import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.3,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text('Yılmaz Yağız Dokumacı'),
                      subtitle: Text('Messages deneme babalık'),
                      leading: CircleAvatar(
                        child: Image.network(
                            'https://yagizdokumaci.com/img/yagophoto.jpg'),
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
