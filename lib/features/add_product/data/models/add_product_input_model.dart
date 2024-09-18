import 'dart:io';

import '../../domain/entities/add_product_input_entity.dart';

class AddProductInputModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  String? imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating = 0;
  final num ratingCount = 0;
  final int unitAmount;

  AddProductInputModel(
      {required this.name,
      required this.code,
      required this.description,
      required this.expirationsMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      required this.price,
      required this.isOrganic,
      required this.image,
      required this.isFeatured,
      this.imageUrl});

  factory AddProductInputModel.fromEntity(
      AddProductInputEntity addProductInputEntity) {
    return AddProductInputModel(
        name: addProductInputEntity.name,
        code: addProductInputEntity.code,
        description: addProductInputEntity.description,
        price: addProductInputEntity.price,
        isOrganic: addProductInputEntity.isOrganic,
        image: addProductInputEntity.image,
        expirationsMonths: addProductInputEntity.expirationsMonths,
        numberOfCalories: addProductInputEntity.numberOfCalories,
        unitAmount: addProductInputEntity.unitAmount,
        isFeatured: addProductInputEntity.isFeatured,
        imageUrl: addProductInputEntity.imageUrl);
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic
    };
  }
}
