package mvc

class TopicController {

    // def index() { }

    static scaffold = Topic

    def topicGoals(String name) {
        Topic topic = Topic.findByTopicName(name)
        List<Goal> goals = Goal.findAllByGoalTopic(topic)
        render text: goals.toString()
    }

    def allTopics() {
        return Topic.findAll()
    }

}
