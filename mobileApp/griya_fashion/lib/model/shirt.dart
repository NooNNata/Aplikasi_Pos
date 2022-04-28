class ShirtModel{
  String image;
  String title;
  String description;
  String price;
  ShirtModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.price});

  factory ShirtModel.toJson(Map<String, dynamic> json) => ShirtModel(
      image: json['image'],
      title: json['title'],
      description: json['description'],
      price: json['price']);
}
