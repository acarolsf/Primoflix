// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class MovieModel {
  MovieModel({required this.assets});

  List<Assets>? assets;

  MovieModel.fromJson(Map<String, dynamic> json) {
    assets = List<Map<String, dynamic>>.from(json['results'])
        .map((e) => Assets.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['results'] = assets!.map((e) => e.toJson()).toList();

    return _data;
  }
}

class Assets {
  Assets({
    required this.id,
    required this.poster_path,
  });

  int? id;
  String? poster_path;

  Assets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    poster_path = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['poster_path'] = poster_path;

    return _data;
  }
}