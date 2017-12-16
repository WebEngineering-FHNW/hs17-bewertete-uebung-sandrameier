package mvc

// EXTERNAL: The image upload part of this code is from here: http://guides.grails.org/grails-upload-file/guide/index.html

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
        goalPriority blank: true, nullable: true, inList: [0, 1, 2, 3]
        goalReached blank: true
        goalTopic blank: true
    }

    static mapping = {
        featuredImageBytes column: 'featured_image_bytes', sqlType: 'longblob'
    }

}
