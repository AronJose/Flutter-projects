import '../../domain/entities/trivia_entity.dart';

class TriviaModel extends TriviaEntity {
  TriviaModel({
    required super.userId,
    required super.id,
    required super.title,
    required super.completed,
  });

  factory TriviaModel.fromJson(Map<String, dynamic> json) => TriviaModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}

