class CallsModel {
  final String name;
  final String time;
  final String imageURL;
  final String callType;

  CallsModel({
    required this.name,
    required this.time,
    required this.imageURL,
    required this.callType,
  });
}

List<CallsModel> chatsList = [
  CallsModel(
    name: "Harry Johns",
    time: "Yesterday 13:30 PM",
    imageURL: "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
    callType: "audio",
  ),
  CallsModel(
    name: "Jennifer Lopez",
    time: "December 20, 15:20PM",
    imageURL: "https://i.pinimg.com/originals/25/78/61/25786134576ce0344893b33a051160b1.jpg",
    callType: 'audio',
  ),
  CallsModel(
    name: "Sonia Ejaz",
    time: "Yesterday 1:40PM",
    imageURL: "https://img.freepik.com/premium-vector/pretty-hijab-woman-side-profile-with-colorful-flower-bouquet_185694-1105.jpg",
    callType: 'video',
  ),
  CallsModel(
    name: "Sonia Ejaz",
    time: "Today 1:40AM",
    imageURL: "https://img.freepik.com/premium-vector/pretty-hijab-woman-side-profile-with-colorful-flower-bouquet_185694-1105.jpg",
    callType: 'audio',
  ),
  CallsModel(
    name: "Test Account",
    time: "Today 4:00AM",
    imageURL: "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg",
    callType: 'audio',
  ),
  CallsModel(
    name: "David",
    time: "December 1, 12:00PM",
    imageURL: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    callType: 'video',
  ),
  CallsModel(
    name: "Harry Johns",
    time: "December 2, 13:30PM",
    imageURL: "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
    callType: 'video',
  ),
];
