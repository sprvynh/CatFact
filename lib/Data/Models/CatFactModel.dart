import 'dart:convert';

import '../../Domain/Entities/CatFact.dart';

class CatFactModel extends CatFact {
  const CatFactModel({
    required String fact,
    required int length,
  }) : super(fact: fact, length: length);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fact': fact,
      'length': length,
    };
  }

  factory CatFactModel.fromMap(Map<String, dynamic> map) {
    return CatFactModel(
      fact: map['fact'] as String,
      length: map['length'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatFactModel.fromJson(String source) {
    return CatFactModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }
}
