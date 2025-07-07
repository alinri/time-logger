class Session {
  late int? sessionId;
  late DateTime startTime;
  late DateTime? endTime;
  late String description;
  Session({
    required this.startTime,
    required this.description,
    this.endTime,
    this.sessionId,
  });

  Map<String, dynamic> toDbMap() {
    return <String, dynamic>{
      'sessionId': sessionId,
      'description': description,
      'startTime': startTime.toIso8601String(),
      'endtime': endTime?.toIso8601String(),
    };
  }

  Session.fromDbMap(Map<String, dynamic> sessionMap) {
    description = sessionMap['description'];
    sessionId = sessionMap['sessionId'];
    description = sessionMap['description'];
    startTime = DateTime.parse(sessionMap['startTime']);
    endTime = sessionMap['endTime'] == null
        ? null
        : DateTime.parse(sessionMap['endTime']);
  }
}
