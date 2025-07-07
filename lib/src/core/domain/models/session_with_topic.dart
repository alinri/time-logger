import 'package:time_logger/src/core/domain/models/session.dart';
import 'package:time_logger/src/core/domain/models/topic.dart';

class SessionWithTopic {
  late final Session session;
  late final Topic topic;
  SessionWithTopic({required this.session, required this.topic});
}
