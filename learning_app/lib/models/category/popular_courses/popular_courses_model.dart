class PopularCoursesModel {
  String id;
  String name;
  String tutorName;
  String duration;
  String price;
  String imageUrl;

  PopularCoursesModel({
    required this.id,
    required this.name,
    required this.tutorName,
    required this.imageUrl,
    required this.duration,
    required this.price,});

  factory PopularCoursesModel.fromJson(Map<String, dynamic> json){
    return PopularCoursesModel(
        id: json['id'],
        name: json['name'],
        imageUrl: json['imageUrl'],
        duration: json['duration'],
        price: json['price'],
        tutorName: json['tutorName']);
  }

  Map<String, dynamic>toJson(){
    return {
      'id':id,
      'title':name,
      'tutorName':tutorName,
      'duration':duration,
      'price':price,
      'imageUrl':imageUrl
    };
  }
}