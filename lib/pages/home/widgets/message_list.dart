// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:whats_app_ui/model/home_data_model.dart';

import '../../chat/chat_page.dart';

class Messagelist extends StatefulWidget {
  const Messagelist({super.key});

  @override
  _MessagelistState createState() => _MessagelistState();
}

class _MessagelistState extends State<Messagelist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 3,
          right: 3,
        ),
        child: listChat());
  }
}

Widget listChat() {
  return ListView.builder(
    itemCount: chatsData.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 12),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(chatsData[index].avatar),
                radius: 30,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          chatsData[index].name,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                          maxLines: 1,
                        ),
                      ),
                      Text(
                        chatsData[index].time,
                        style: TextStyle(
                            color: chatsData[index].newMessages != 0
                                ? Colors.green
                                : Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            chatsData[index].lastSeen == true
                                ? const Icon(
                                    Icons.done_all,
                                    color: Colors.grey,
                                    size: 18,
                                  )
                                : const SizedBox(),
                            const SizedBox(width: 3),
                            Expanded(
                              child: Text(
                                chatsData[index].lastMessage,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      chatsData[index].newMessages != 0
                          ? Container(
                              margin: const EdgeInsets.only(right: 1, left: 0),
                              height: 19,
                              width: 19,
                              child: CircleAvatar(
                                radius: 12.0,
                                backgroundColor: Colors.green,
                                child: Text(
                                  chatsData[index].newMessages.toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
