class IceCreamData {
  IceCreamData({
    required this.iceCreams,
  });

  final List<IceCream> iceCreams;

  factory IceCreamData.fromJson(Map<String, dynamic> json) {
    return IceCreamData(
      iceCreams: json["iceCreams"] == null
          ? []
          : List<IceCream>.from(
              json["iceCreams"]!.map((x) => IceCream.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "iceCreams": iceCreams.map((x) => x.toJson()).toList(),
      };

  // @override
  // String toString() {
  //   return "$iceCreams, ";
  // }
}

class IceCream {
  IceCream({
    required this.flavor,
    required this.description,
    required this.toppings,
    required this.price,
    required this.image,
    required this.ingredients,
  });

  final String? flavor;
  final String? description;
  final List<String> toppings;
  final double? price;
  final String? image;
  final List<Ingredient> ingredients;

  factory IceCream.fromJson(Map<String, dynamic> json) {
    return IceCream(
      flavor: json["flavor"],
      description: json["description"],
      toppings: json["toppings"] == null
          ? []
          : List<String>.from(json["toppings"]!.map((x) => x)),
      price: json["price"],
      image: json["image"],
      ingredients: json["ingredients"] == null
          ? []
          : List<Ingredient>.from(
              json["ingredients"]!.map((x) => Ingredient.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "flavor": flavor,
        "description": description,
        "toppings": toppings.map((x) => x).toList(),
        "price": price,
        "image": image,
        "ingredients": ingredients.map((x) => x.toJson()).toList(),
      };

  // @override
  // String toString() {
  //   return "$flavor, $description, $toppings, $price, $image, $ingredients, ";
  // }
}

class Ingredient {
  Ingredient({
    required this.name,
    required this.quantity,
  });

  final String? name;
  final String? quantity;

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json["name"],
      quantity: json["quantity"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
      };

  // @override
  // String toString() {
  //   return "$name, $quantity, ";
  // }
}
