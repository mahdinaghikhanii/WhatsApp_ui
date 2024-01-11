class FakeCallsModel {
  FakeCallsModel({
    required this.name,
    required this.date,
    required this.time,
    required this.count,
    required this.avatar,
    required this.received,
  });

  final String name;
  final String date;
  final String time;
  final int count;
  final String avatar;
  final bool received;
}

List<FakeCallsModel> callData = [
  FakeCallsModel(
    name: "Nimesh Sandaruwan",
    date: "November 15",
    time: "1:03 PM",
    count: 0,
    avatar: "assets/chester.png",
    received: true,
  ),
  FakeCallsModel(
    name: "Ayesha Sandamali",
    date: "November 15",
    time: "1:03 PM",
    count: 1,
    avatar: "assets/3.png",
    received: true,
  ),
  FakeCallsModel(
    name: "Aravinda Perera",
    date: "November 15",
    time: "1:03 PM",
    count: 3,
    avatar: "assets/3.png",
    received: false,
  ),
  FakeCallsModel(
    name: "Nirasha Sandamali",
    date: "November 15",
    time: "1:03 PM",
    count: 10,
    avatar: "assets/4.png",
    received: false,
  ),
  FakeCallsModel(
    name: "Kasun Gamage",
    date: "Hey, Are you there!",
    time: "1:03 PM",
    count: 0,
    avatar: "assets/3.jpg",
    received: true,
  ),
];
