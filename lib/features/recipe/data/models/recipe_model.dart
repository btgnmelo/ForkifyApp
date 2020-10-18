import 'package:ForkifyApp/features/recipe/domain/entities/recipe.dart';
import 'package:meta/meta.dart';

class RecipeModel extends Recipe {
  final String recipeId;
  final double socialRank;
  final String title;
  final String publisher;
  final String imageURL;
  final String publisherURL;
  final String sourceURL;
  RecipeModel({
    @required this.recipeId,
    @required this.socialRank,
    @required this.title,
    @required this.publisher,
    @required this.imageURL,
    @required this.publisherURL,
    @required this.sourceURL,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      recipeId: json['recipe_id'],
      socialRank: (json['social_rank'] as num).toDouble(),
      title: json['title'],
      publisher: json['publisher'],
      imageURL: json['image_url'],
      publisherURL: json['publisher_url'],
      sourceURL: json['source_url'],
    );
  }
}
