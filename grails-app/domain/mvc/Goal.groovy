package mvc

class Goal {

    String  goalDescription
    String  goalImage
    Date    goalDeadline
    int     goalPriority
    boolean goalReached
    Topic   goalTopic

    String toString() {
        return goalDescription
    }

    static constraints = {
        goalDescription blank: false
        goalImage nullable: true
        goalDeadline blank: true, nullable: true
        goalPriority blank: true, inList: [1, 2, 3]
        goalReached blank: true
        goalTopic blank: true
    }

}
