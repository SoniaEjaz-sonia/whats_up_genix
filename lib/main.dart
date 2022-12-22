import 'package:flutter/material.dart';
import 'package:whats_up_genix/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        primaryColor: AppColors.darkTealGreenColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.darkTealGreenColor,
        ),
      ),
      home: const WhatsUpHome(title: 'WhatsUp'),
    );
  }
}

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
          style: const TextStyle(fontSize: 20),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
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
    );
  }
}
