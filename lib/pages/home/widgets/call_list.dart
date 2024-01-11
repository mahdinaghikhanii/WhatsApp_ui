// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:whats_app_ui/model/call_data_model.dart';
import 'package:whats_app_ui/theme/colors.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: kPrimaryColor,
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.share,
                    color: Colors.white,
                  )),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create call link",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Share a link for you WhatsApp call",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Recent",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 20),
            callListView()
          ],
        ));
  }
}

Widget callListView() {
  return Expanded(
    child: ListView.builder(
      itemCount: callData.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(callData[index].avatar),
                radius: 28,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(callData[index].name,
                        style: TextStyle(
                            color: callData[index].received == true
                                ? Colors.red
                                : Colors.black)),
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Icon(
                        Icons.call,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    callData[index].received == true
                        ? const Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 16,
                          )
                        : const Icon(
                            Icons.call_made,
                            color: kPrimaryColor,
                            size: 16,
                          ),
                    const SizedBox(width: 8),
                    Text(
                        "${callData[index].count} ${callData[index].date}, ${callData[index].time}"),
                  ],
                )
              ]),
            )
          ]),
        );
      },
    ),
  );
}
