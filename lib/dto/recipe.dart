import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:take_home/dto/serializers.dart';

part 'recipe.g.dart';

abstract class Recipe implements Built<Recipe, RecipeBuilder> {
  // Fields
  String? get calories;
  String? get carbos;
  String? get description;
  int? get difficulty;
  String? get fats;
  String? get headline;
  String? get id;
  String? get image;
  String? get name;
  String? get proteins;
  String? get thumb;
  String? get time;

  Recipe._();

  factory Recipe([void Function(RecipeBuilder) updates]) = _$Recipe;

  String toJson() {
    return json.encode(serializers.serializeWith(Recipe.serializer, this));
  }

  static Recipe fromJson(String jsonString) {
    return serializers.deserializeWith(
        Recipe.serializer, json.decode(jsonString))!;
  }

  static Recipe fromMap(Map<String, dynamic> data) {
    return serializers.deserializeWith(Recipe.serializer, data)!;
  }

  static Serializer<Recipe> get serializer => _$recipeSerializer;
}
