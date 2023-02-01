
class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;

  ProductModel({required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
  });


  factory ProductModel.fromJson(jsonData){
    return ProductModel(id: jsonData['id'],
        title: jsonData['title'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
    );
  }

}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});


  factory RatingModel.fromJson(jsonData){
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
