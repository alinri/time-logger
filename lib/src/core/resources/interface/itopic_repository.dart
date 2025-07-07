import 'package:time_logger/src/core/domain/models/topic.dart';

abstract class ITopicRepository {
  Future<Topic> addTopic(Topic topic);
  Future<List<Topic>> fetchTopics();
  Future<Topic> fetchTopic(int topicId);
  Future<Topic> updateTopic(int topicId);
}
