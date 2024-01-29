import 'package:flutter/material.dart';

@immutable
class Hotel {
  final String name;
  final String address;
  final List<String> image;
  final String description;
  final int price;
  final String rating;
  final List<String> tags;
  final bool isFavorite = false;

  const Hotel({
    required this.name,
    required this.address,
    required this.image,
    required this.description,
    required this.price,
    required this.rating,
    required this.tags,
  });

  Hotel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        image = json['image'].cast<String>(),
        description = json['description'],
        price = json['price'],
        rating = json['rating'],
        tags = json['tags'].cast<String>();

  Hotel copyWith({
    String? name,
    String? address,
    List<String>? image,
    String? description,
    int? price,
    String? rating,
    List<String>? tags,
  }) {
    return Hotel(
      name: name ?? this.name,
      address: address ?? this.address,
      image: image ?? this.image,
      description: description ?? this.description,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      tags: tags ?? this.tags,
    );
  }
}
