class Emotion {
  String name;
  String memo;
  bool isDone;
  final DateTime createdAt;
  DateTime updatedAt;

  Emotion(
      {this.name,
      this.memo,
      this.isDone = false,
      this.createdAt,
      this.updatedAt});
}
