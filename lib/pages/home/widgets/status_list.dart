import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class StatusList extends StatelessWidget {
  const StatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 25, bottom: 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Status",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 64,
              height: 64,
              child: Stack(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/2.jpg')),
                  ),
                  Positioned(
                      right: 4,
                      bottom: 4,
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kPrimaryColor),
                        child: const Center(
                          child: Icon(
                            CupertinoIcons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 14),
                const Text(
                  "My status",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(height: 5),
                Text(
                  "Tap to add status update",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
