// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel{

 static List<Item> items =[];
//  =[
//     Item(
//       id :1,
//       name:" T-shirt For Men",
//       desc:"This is a Zudio-brand t-shirt for men",
//       price:599,
//       images:"https://img.freepik.com/free-photo/man-wearing-t-shirt-gesturing_23-2149393642.jpg?t=st=1744617929~exp=1744621529~hmac=34192b5452aba6ce908a0d6a89b4237a9d8364b9786f47c14fa8905559a9f3e0&w=1380",
//       color:"#33505a",
//     )
//   ];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final String images;
  final String color;
  final num price;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.images,
    required this.color,
    required this.price,
  });

  

  // factory Item.fromMap(Map<String,dynamic> map)=> Item(
  //     id: map["id"],
  //     name: map["name"],
  //     price: map["price"],
  //     desc: map["desc"],
  //     color: map["color"],
  //     images: map["images"],
  //   );
  // toMap()=>{
  //   "id":id,
  //   "name":name,
  //   "price":price,
  //   "desc":desc,
  //   "color":color,
  //   "images":images,
  // };

  Item copyWith({
    int? id,
    String? name,
    String? desc,
    String? images,
    String? color,
    num? price,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      images: images ?? this.images,
      color: color ?? this.color,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'images': images,
      'color': color,
      'price': price,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      desc: map['desc'] as String,
      images: map['images'] as String,
      color: map['color'] as String,
      price: map['price'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $desc, images: $images, color: $color, price: $price)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.desc == desc &&
      other.images == images &&
      other.color == color &&
      other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desc.hashCode ^
      images.hashCode ^
      color.hashCode ^
      price.hashCode;
  }
}
