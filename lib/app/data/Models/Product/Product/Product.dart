class Product {
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.totalQuantity,
    this.status,
    required this.category,
    required this.categoryId,
    required this.discount,
    required this.discountAmount,
    required this.ratting,
    required this.vendor,
    required this.details,
    required this.colors,
    required this.weights,
    required this.sizes,
    required this.reviews,
    required this.images,
  });

  int id;
  String name;
  String description;
  int price;
  String totalQuantity;
  dynamic status;
  String category;
  int categoryId;
  int discount;
  int discountAmount;
  int ratting;
  String vendor;
  List<Detail> details;
  List<Color> colors;
  List<Color> weights;
  List<Color> sizes;
  List<dynamic> reviews;
  List<String> images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        totalQuantity: json["total_quantity"],
        status: json["status"],
        category: json["category"],
        categoryId: json["category_id"],
        discount: json["discount"],
        discountAmount: json["discount_amount"],
        ratting: json["ratting"],
        vendor: json["vendor"],
        details:
            List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        colors: List<Color>.from(json["colors"].map((x) => Color.fromJson(x))),
        weights:
            List<Color>.from(json["weights"].map((x) => Color.fromJson(x))),
        sizes: List<Color>.from(json["sizes"].map((x) => Color.fromJson(x))),
        reviews: List<dynamic>.from(json["reviews"].map((x) => x)),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "total_quantity": totalQuantity,
        "status": status,
        "category": category,
        "category_id": categoryId,
        "discount": discount,
        "discount_amount": discountAmount,
        "ratting": ratting,
        "vendor": vendor,
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "colors": List<dynamic>.from(colors.map((x) => x.toJson())),
        "weights": List<dynamic>.from(weights.map((x) => x.toJson())),
        "sizes": List<dynamic>.from(sizes.map((x) => x.toJson())),
        "reviews": List<dynamic>.from(reviews.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}

class Color {
  Color({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Detail {
  Detail({
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.colorId,
    required this.sizeId,
    required this.weightId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int productId;
  int price;
  int quantity;
  int colorId;
  int sizeId;
  int weightId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        id: json["id"],
        productId: json["product_id"],
        price: json["price"],
        quantity: json["quantity"],
        colorId: json["color_id"],
        sizeId: json["size_id"],
        weightId: json["weight_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "price": price,
        "quantity": quantity,
        "color_id": colorId,
        "size_id": sizeId,
        "weight_id": weightId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
