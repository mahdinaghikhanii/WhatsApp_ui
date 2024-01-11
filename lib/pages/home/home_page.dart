// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_ui/pages/home/widgets/status_list.dart';

import '../../theme/colors.dart';
import 'widgets/call_list.dart';
import 'widgets/message_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        bottom: TabBar(
          labelStyle:
              const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            SizedBox(
              width: 20,
              height: 20,
              child: Tab(
                child: Icon(Icons.group),
              ),
            ),
            SizedBox(
              height: 20,
              width: 70,
              child: Tab(
                child: Text("Chats"),
              ),
            ),
            SizedBox(
              height: 20,
              width: 100,
              child: Tab(
                child: Text("Status"),
              ),
            ),
            SizedBox(
              height: 50,
              width: 70,
              child: Tab(
                child: Text("Calls"),
              ),
            ),
          ],
        ),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.camera,
                size: 20,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const Icon(Icons.more_vert),
          const SizedBox(width: 10)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text(""),
          Messagelist(),
          StatusList(),
          CallPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          )),
    );
  }
}
