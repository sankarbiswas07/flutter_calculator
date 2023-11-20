// To parse this JSON data, do
//
//     final iceCreamData = iceCreamDataFromJson(jsonString);

import 'dart:convert';

IceCreamData iceCreamDataFromJson(String str) =>
    IceCreamData.fromJson(json.decode(str));

String iceCreamDataToJson(IceCreamData data) => json.encode(data.toJson());

class IceCreamData {
  List<IceCream>? iceCreams;

  IceCreamData({
    this.iceCreams,
  });

  IceCreamData copyWith({
    List<IceCream>? iceCreams,
  }) =>
      IceCreamData(
        iceCreams: iceCreams ?? this.iceCreams,
      );

  factory IceCreamData.fromJson(Map<String, dynamic> json) => IceCreamData(
        iceCreams: json["iceCreams"] == null
            ? []
            : List<IceCream>.from(
                json["iceCreams"]!.map((x) => IceCream.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "iceCreams": iceCreams == null
            ? []
            : List<dynamic>.from(iceCreams!.map((x) => x.toJson())),
      };
}

class IceCream {
  String? flavor;
  String? description;
  List<String>? toppings;
  double? price;
  String? image;
  List<Ingredient>? ingredients;

  IceCream({
    this.flavor,
    this.description,
    this.toppings,
    this.price,
    this.image,
    this.ingredients,
  });

  IceCream copyWith({
    String? flavor,
    String? description,
    List<String>? toppings,
    double? price,
    String? image,
    List<Ingredient>? ingredients,
  }) =>
      IceCream(
        flavor: flavor ?? this.flavor,
        description: description ?? this.description,
        toppings: toppings ?? this.toppings,
        price: price ?? this.price,
        image: image ?? this.image,
        ingredients: ingredients ?? this.ingredients,
      );

  factory IceCream.fromJson(Map<String, dynamic> json) => IceCream(
        flavor: json["flavor"],
        description: json["description"],
        toppings: json["toppings"] == null
            ? []
            : List<String>.from(json["toppings"]!.map((x) => x)),
        price: json["price"]?.toDouble(),
        image: json["image"],
        ingredients: json["ingredients"] == null
            ? []
            : List<Ingredient>.from(
                json["ingredients"]!.map((x) => Ingredient.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "flavor": flavor,
        "description": description,
        "toppings":
            toppings == null ? [] : List<dynamic>.from(toppings!.map((x) => x)),
        "price": price,
        "image": image,
        "ingredients": ingredients == null
            ? []
            : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
      };
}

class Ingredient {
  String? name;
  String? quantity;

  Ingredient({
    this.name,
    this.quantity,
  });

  Ingredient copyWith({
    String? name,
    String? quantity,
  }) =>
      Ingredient(
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
      );

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        name: json["name"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
      };
}
