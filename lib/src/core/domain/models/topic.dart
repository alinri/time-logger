class Topic {
  late int? topicId;
  late String topicTitle;
  Topic({required this.topicTitle, this.topicId});

  Map<String, dynamic> toDbMap() {
    return <String, dynamic>{'topicId': topicId, 'topicTitle': topicTitle};
  }

  Topic.fromDbMap(Map<String, dynamic> topicMap) {
    topicId = topicMap['topicId'];
    topicTitle = topicMap['topicTitle'];
  }
}
