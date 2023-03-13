// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Recipe> _$recipeSerializer = new _$RecipeSerializer();

class _$RecipeSerializer implements StructuredSerializer<Recipe> {
  @override
  final Iterable<Type> types = const [Recipe, _$Recipe];
  @override
  final String wireName = 'Recipe';

  @override
  Iterable<Object?> serialize(Serializers serializers, Recipe object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.calories;
    if (value != null) {
      result
        ..add('calories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carbos;
    if (value != null) {
      result
        ..add('carbos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.difficulty;
    if (value != null) {
      result
        ..add('difficulty')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fats;
    if (value != null) {
      result
        ..add('fats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.headline;
    if (value != null) {
      result
        ..add('headline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proteins;
    if (value != null) {
      result
        ..add('proteins')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Recipe deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecipeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'calories':
          result.calories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carbos':
          result.carbos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'difficulty':
          result.difficulty = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'fats':
          result.fats = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'headline':
          result.headline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proteins':
          result.proteins = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Recipe extends Recipe {
  @override
  final String? calories;
  @override
  final String? carbos;
  @override
  final String? description;
  @override
  final int? difficulty;
  @override
  final String? fats;
  @override
  final String? headline;
  @override
  final String? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  final String? proteins;
  @override
  final String? thumb;
  @override
  final String? time;

  factory _$Recipe([void Function(RecipeBuilder)? updates]) =>
      (new RecipeBuilder()..update(updates))._build();

  _$Recipe._(
      {this.calories,
      this.carbos,
      this.description,
      this.difficulty,
      this.fats,
      this.headline,
      this.id,
      this.image,
      this.name,
      this.proteins,
      this.thumb,
      this.time})
      : super._();

  @override
  Recipe rebuild(void Function(RecipeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeBuilder toBuilder() => new RecipeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Recipe &&
        calories == other.calories &&
        carbos == other.carbos &&
        description == other.description &&
        difficulty == other.difficulty &&
        fats == other.fats &&
        headline == other.headline &&
        id == other.id &&
        image == other.image &&
        name == other.name &&
        proteins == other.proteins &&
        thumb == other.thumb &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calories.hashCode);
    _$hash = $jc(_$hash, carbos.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, difficulty.hashCode);
    _$hash = $jc(_$hash, fats.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, proteins.hashCode);
    _$hash = $jc(_$hash, thumb.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Recipe')
          ..add('calories', calories)
          ..add('carbos', carbos)
          ..add('description', description)
          ..add('difficulty', difficulty)
          ..add('fats', fats)
          ..add('headline', headline)
          ..add('id', id)
          ..add('image', image)
          ..add('name', name)
          ..add('proteins', proteins)
          ..add('thumb', thumb)
          ..add('time', time))
        .toString();
  }
}

class RecipeBuilder implements Builder<Recipe, RecipeBuilder> {
  _$Recipe? _$v;

  String? _calories;
  String? get calories => _$this._calories;
  set calories(String? calories) => _$this._calories = calories;

  String? _carbos;
  String? get carbos => _$this._carbos;
  set carbos(String? carbos) => _$this._carbos = carbos;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _difficulty;
  int? get difficulty => _$this._difficulty;
  set difficulty(int? difficulty) => _$this._difficulty = difficulty;

  String? _fats;
  String? get fats => _$this._fats;
  set fats(String? fats) => _$this._fats = fats;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _proteins;
  String? get proteins => _$this._proteins;
  set proteins(String? proteins) => _$this._proteins = proteins;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  RecipeBuilder();

  RecipeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calories = $v.calories;
      _carbos = $v.carbos;
      _description = $v.description;
      _difficulty = $v.difficulty;
      _fats = $v.fats;
      _headline = $v.headline;
      _id = $v.id;
      _image = $v.image;
      _name = $v.name;
      _proteins = $v.proteins;
      _thumb = $v.thumb;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Recipe other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Recipe;
  }

  @override
  void update(void Function(RecipeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Recipe build() => _build();

  _$Recipe _build() {
    final _$result = _$v ??
        new _$Recipe._(
            calories: calories,
            carbos: carbos,
            description: description,
            difficulty: difficulty,
            fats: fats,
            headline: headline,
            id: id,
            image: image,
            name: name,
            proteins: proteins,
            thumb: thumb,
            time: time);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
