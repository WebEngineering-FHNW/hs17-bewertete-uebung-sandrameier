package mvc

class Goal {

    String  goalDescription
    // Image image
    Date    goalDeadline
    int     goalPriority
    boolean goalReached
    Topic   goalTopic

    String toString() {
        return goalDescription
    }

    static constraints = {
        goalDescription blank: false
        goalDeadline blank: true, nullable: true
        goalPriority blank: true, nullable: true, inList: [0,  1, 2, 3]
        goalReached blank: true
        goalTopic blank: true
    }

}
