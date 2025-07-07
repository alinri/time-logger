import 'package:time_logger/src/core/domain/models/session_with_topic.dart';

abstract class ISessionRepository {
  Future<List<SessionWithTopic>> fetchSessions();
  Future<SessionWithTopic> fetchSession(int sesisonId);
  Future<SessionWithTopic> addSession(SessionWithTopic session);
  Future<SessionWithTopic> updateSession(SessionWithTopic session);
}
