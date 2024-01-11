import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({required Key key, required this.name, required this.avatar})
      : super(key: key);
  final String name;
  final String avatar;

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey _menuKey = GlobalKey();
  void alert(String title) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text(title),
              content: const Text("is selected value"),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: const Text("Ok"),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final button = PopupMenuButton(
        key: _menuKey,
        itemBuilder: (_) => <PopupMenuItem<String>>[
              const PopupMenuItem<String>(
                  value: '1', child: Text('View contact')),
              const PopupMenuItem<String>(
                  value: '2', child: Text('Media, links, and docs')),
              const PopupMenuItem<String>(value: '3', child: Text('Search')),
              const PopupMenuItem<String>(
                  value: '4', child: Text('Mute notifications')),
              const PopupMenuItem<String>(value: '5', child: Text('Wallpaper')),
              const PopupMenuItem<String>(value: '5', child: Text('More')),
            ],
        onSelected: (String value) => alert(value));
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name),
            const Text(
              "online",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          Row(
            children: const [
              Icon(Icons.video_call),
              SizedBox(width: 10.0),
              Icon(Icons.call),
            ],
          ),
          // SizedBox(width: 5.0),
          InkWell(
            child: button,
            onTap: () {
              dynamic state = _menuKey.currentState;
              state.showButtonMenu();
            },
          )
        ],
      ),
      body: const Text(""),
    );
  }
}
