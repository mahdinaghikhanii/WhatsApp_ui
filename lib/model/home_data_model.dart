class ChatsDataModel {
  ChatsDataModel({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.newMessages,
    required this.avatar,
    required this.lastSeen,
  });

  final String name;
  final String lastMessage;
  final String time;
  final String avatar;
  final int newMessages;
  final bool lastSeen;
}

List<ChatsDataModel> chatsData = [
  ChatsDataModel(
    name: "Armin",
    lastMessage: "You are very wealthy.",
    time: "1:03",
    newMessages: 0,
    avatar: "assets/armin.png",
    lastSeen: true,
  ),
  ChatsDataModel(
    name: "Chester",
    lastMessage: "please check your direct message.",
    time: "4:03",
    newMessages: 2,
    avatar: "assets/chester.png",
    lastSeen: false,
  ),
  ChatsDataModel(
    name: "Alex",
    lastMessage: "Hey, Are you there!",
    time: "17:03",
    newMessages: 1,
    avatar: "assets/2.jpg",
    lastSeen: true,
  ),
  ChatsDataModel(
    name: "Mia Gamage",
    lastMessage: "Let's Go Play at the Adams (Blue Chambray)",
    time: "18:03",
    newMessages: 10,
    avatar: "assets/3.png",
    lastSeen: false,
  ),
  ChatsDataModel(
    name: "Alberto E. Rodriguez",
    lastMessage: "Alberto E. Rodriguez is known for Little High ddd",
    time: "02/12/2023",
    newMessages: 0,
    avatar: "assets/5.png",
    lastSeen: false,
  ),
  ChatsDataModel(
    name: "Oliver Cohan",
    lastMessage: "where are you.",
    time: "29/11/2023",
    newMessages: 0,
    avatar: "assets/4.png",
    lastSeen: true,
  ),
  ChatsDataModel(
    name: "Lauren Cohan",
    lastMessage: "Awesome!",
    time: "09/11/2023",
    newMessages: 0,
    avatar: "assets/3.jpg",
    lastSeen: true,
  ),
  ChatsDataModel(
    name: "Uber support",
    lastMessage: "Thank you!",
    time: "06/8/2023",
    newMessages: 0,
    avatar: "assets/tax.png",
    lastSeen: false,
  ),
];
