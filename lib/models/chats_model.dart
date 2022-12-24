class ChatsModel {
  final String name;
  final String message;
  final String time;
  final String imageURL;

  ChatsModel({
    required this.name,
    required this.message,
    required this.time,
    required this.imageURL,
  });
}

// https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png
// https://i.pinimg.com/originals/25/78/61/25786134576ce0344893b33a051160b1.jpg
// https://img.freepik.com/premium-vector/pretty-hijab-woman-side-profile-with-colorful-flower-bouquet_185694-1105.jpg
// https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg
// https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1

List<ChatsModel> chatsList = [
  ChatsModel(
    name: "",
    message: "Archived",
    time: "10",
    imageURL: "",
  ),
  ChatsModel(
    name: "Harry Johns",
    message: "Hey Flutter",
    time: "13:30",
    imageURL: "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
  ),
  ChatsModel(
    name: "Jennifer Lopez",
    message: "Flutter is amazing",
    time: "15:20",
    imageURL: "https://i.pinimg.com/originals/25/78/61/25786134576ce0344893b33a051160b1.jpg",
  ),
  ChatsModel(
    name: "Sonia Ejaz",
    message: "Love to develop apps using Flutter",
    time: "1:40",
    imageURL: "https://img.freepik.com/premium-vector/pretty-hijab-woman-side-profile-with-colorful-flower-bouquet_185694-1105.jpg",
  ),
  ChatsModel(
    name: "Test Account",
    message: "Flutter Test",
    time: "4:00",
    imageURL: "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.jpg",
  ),
  ChatsModel(
    name: "David",
    message: "Flutter Test Message",
    time: "12:00",
    imageURL: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
];
