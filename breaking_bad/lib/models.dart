// ignore_for_file: camel_case_types

class Character {
  late String name;
  late String imgUrl;
  late int id;

  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imgUrl = json['img'];
    id = json['char_id'];
  }
}
