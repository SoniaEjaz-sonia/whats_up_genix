class StatusModel {
  final String name;
  final String time;
  final int statusCount;
  final List<String> imageURLs;

  StatusModel({
    required this.name,
    required this.time,
    required this.statusCount,
    required this.imageURLs,
  });
}

List<StatusModel> statusList = [
  StatusModel(
    name: "Harry Johns",
    time: "10 minutes ago",
    statusCount: 2,
    imageURLs: ["1.png", "3.png"],
  ),
  StatusModel(
    name: "Jennifer Lopez",
    time: "30 minutes ago",
    statusCount: 1,
    imageURLs: ["5.png"],
  ),
  StatusModel(
    name: "Sonia Ejaz",
    time: "7 minutes ago",
    statusCount: 4,
    imageURLs: ["2.png", "3.png", "1.png"],
  ),
  StatusModel(
    name: "Test Account",
    time: "Yesterday 4:00 AM",
    statusCount: 3,
    imageURLs: ["1.png", "2.png", "3.png"],
  ),
  StatusModel(
    name: "David",
    time: "Today 12:00 AM",
    statusCount: 1,
    imageURLs: ["4.png"],
  ),
  StatusModel(
    name: "Harry Johns",
    time: "Today 13:30PM",
    statusCount: 1,
    imageURLs: ["1.png"],
  ),
  StatusModel(
    name: "Jennifer Lopez",
    time: "Yesterday 15:20PM",
    statusCount: 1,
    imageURLs: ["2.png"],
  ),
];
