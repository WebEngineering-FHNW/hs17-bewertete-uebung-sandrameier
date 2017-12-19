package mvc

class GoalController {

    static scaffold = Goal

    FileUploadService fileUploadService

    def index(Topic meinThema) {
        List<Topic> t = Topic.list()
        List<Goal> g = Goal.list()

        render view:'index', model: [goals: g, topics: t]
    }

    def goallist() {
        // do nothing
    }

    /* Function to set a goal to reached, does not work yet
    def setReached(String s) {
        Goal g = Goal.findById(s.toInteger())
        g.save(goalReached: true)

        redirect(action: "show", id: g.id)
    } */

    // EXTERNAL: This code is from here https://de.slideshare.net/cavneb/upload-files-with-grails (GitHub: https://github.com/coderberry/FileUploader)
    // EXTERNAL: Since the code did not work properly, I made a few changes (mainly not handling the first save in an "if"-Statement)
    def save = {

        // Saving a new goal with all params, while file is null by now -> goal has an id, with which we can work
        def goalInstance = new Goal(params)
        goalInstance.save(flush: true)

        // Getting the file from the input form
        def picture = request.getFile("file")

        // Save file in "goalImages" folder and set the file path as "goalImage" of this goal
        if (!picture.isEmpty()) {
            goalInstance.goalImage = fileUploadService.uploadFile(picture, "${goalInstance.id}.jpg", "goalImages")
        }

        // Save again, this time with the new goalImage value
        goalInstance.save(flush: true)

       redirect(action: "index")
    }
    // EXTERNAL: Ends here
}
