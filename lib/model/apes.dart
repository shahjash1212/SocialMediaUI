class Ape {
  final String image, name, discription, likes, comments;

  Ape(
      {required this.image,
      required this.name,
      required this.discription,
      required this.likes,
      required this.comments});
}

List<Ape> apes = [
  Ape(
      name: "brown ape",
      image: "assets/1.png",
      discription: "ape by indian",
      comments: "1.4k",
      likes: "54k"),
  Ape(
      name: "super ape",
      image: "assets/2.png",
      discription: "ape by world",
      comments: "1.2k",
      likes: "52k"),
  Ape(
      name: "dark ape",
      image: "assets/3.png",
      discription: "ape by people",
      comments: "1.3k",
      likes: "56k"),
  Ape(
      name: "cool ape",
      image: "assets/4.png",
      discription: "ape by japan",
      comments: "1.4k",
      likes: "54k"),
  Ape(
      name: "rick ape",
      image: "assets/5.png",
      discription: "ape by america",
      comments: "1.5k",
      likes: "56k"),
  Ape(
      name: "space ape",
      image: "assets/6.png",
      discription: "ape by ISRO",
      comments: "2.4k",
      likes: "55k"),
];
