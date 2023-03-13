import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:take_home/api/api.dart';
import 'package:take_home/dto/dto.dart';
import 'package:take_home/ui/util/util.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f3ef),
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ValueListenableBuilder(
              valueListenable: _recipes,
              builder: (context, value, child) => RefreshIndicator(
                onRefresh: _loadRecipes,
                child: ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final recipe = value[index];
                    return Container(
                      height: 520,
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 24),
                      child: Stack(
                        // alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(26)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(recipe.image ?? ''),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 24),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      recipe.name ?? '',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 8),
                                      child: Text(
                                        recipe.headline ?? '',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    IntrinsicHeight(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'TIME',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const VerticalDivider(
                                            thickness: 1,
                                            color: Colors.grey,
                                            width: 30,
                                          ),
                                          Text(
                                            recipe.time ?? '',
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 48),
                                      child: Column(
                                        children: [
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.spaceBetween,
                                          //   crossAxisAlignment: CrossAxisAlignment.start,
                                          //   children: const [
                                          //     Flexible(
                                          //       child: Text('Description'),
                                          //     ),
                                          //     Flexible(
                                          //       flex: 2,
                                          //       child: Text(
                                          //         'There\u2019s nothing like the simple things in life - the smell of freshly cut grass, sitting outside on a nice sunny day, spending time with friends and family. Well here is a recipe that delivers simple culinary pleasures - some nice fresh fish with a crispy crust, crunchy potato wedges and some delightfully sweet sugar snap peas flavoured with cooling mint. Slip into something comfortable and relax into a delicious dinner!',
                                          //         textAlign: TextAlign.justify,
                                          //       ),
                                          //     )
                                          //   ],
                                          // ),
                                          _dataRow(
                                              title: 'Calories:',
                                              data: recipe.calories ?? ''),
                                          _dataRow(
                                              title: 'Carbos:',
                                              data: recipe.carbos ?? ''),
                                          _dataRow(
                                              title: 'Fats:',
                                              data: recipe.fats ?? ''),
                                          _dataRow(
                                              title: 'Proteins:',
                                              data: recipe.proteins ?? ''),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Privates
  final _api = RecipesApi(
      endpoint:
          'https://hf-android-app.s3-eu-west-1.amazonaws.com/android-test/recipes.json');
  final _recipes = ValueNotifier<BuiltList<Recipe>>(BuiltList());

  Future<void> _loadRecipes() async {
    try {
      _recipes.value = await _api.readRecipes();
    } catch (err) {
      SfToastMessages().show(
        context: context,
        state: ToastMessageState.error,
        text: 'Load data error!',
      );
    }
  }

  Widget _dataRow({required String title, required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(title),
        ),
        Flexible(child: Text(data))
      ],
    );
  }
}
