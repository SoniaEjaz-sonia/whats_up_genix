import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/app_colors.dart';
import 'package:whats_up_genix/constants/app_fonts.dart';
import 'package:whats_up_genix/screens/calls_screen.dart';
import 'package:whats_up_genix/screens/chats_screen.dart';
import 'package:whats_up_genix/screens/community_screen.dart';
import 'package:whats_up_genix/screens/status_screen.dart';

class WhatsUpHome extends StatefulWidget {
  final String title;

  const WhatsUpHome({Key? key, required this.title}) : super(key: key);

  @override
  State<WhatsUpHome> createState() => _WhatsUpHomeState();
}

class _WhatsUpHomeState extends State<WhatsUpHome> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        title: Text(
          widget.title,
          style: TextStyle(fontSize: AppFonts.fontSize23),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: AppColors.whiteColor,
          tabs: const [
            Tab(icon: Icon(Icons.people)),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CommunityScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
