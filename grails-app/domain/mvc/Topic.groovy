package mvc

class Topic {

    String topicName

    String toString() {
        return topicName
    }

    static constraints = {
        topicName(blank: false, nullable: false)
    }
}
