import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:take_home/dto/recipe.dart';

class RecipesApi {
  final String endpoint;

  RecipesApi({required this.endpoint});

  Future<BuiltList<Recipe>> readRecipes() async {
    final data = (await _dio.get<List<dynamic>>(endpoint)).data;
    return data?.map((e) {
          return Recipe.fromMap(e);
        }).toBuiltList() ??
        BuiltList();
  }

  // Privates
  final _dio = Dio();
}
