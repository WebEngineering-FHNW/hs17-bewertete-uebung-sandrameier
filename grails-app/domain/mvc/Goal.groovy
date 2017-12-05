package mvc

import java.sql.Blob

class Goal {

    String  goalTitle
    String  goalDescription
    //Blob    goalImage
    Date    goalDeadline
    int     goalPriority
    boolean goalReached
    Topic   goalTopic

    String toString() {
        return goalDescription
    }

    static constraints = {
        goalTitle blank: false
        goalDescription blank: false
        //goalImage blank: true, nullable: true
        goalDeadline blank: true, nullable: true
        goalPriority blank: true, nullable: true, inList: [0, 1, 2, 3]
        goalReached blank: true
        goalTopic blank: true
    }

}
