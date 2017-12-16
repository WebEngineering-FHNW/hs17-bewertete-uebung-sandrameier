package mvc

class GoalController {

    static scaffold = Goal

    FileUploadService fileUploadService

    // TODO: Change the name of this method to "index" as well as the views name & view reference
    // TODO: This overwrites the existing list view of all goals
    def home(Topic meinThema) {
        List<Topic> t = Topic.list()
        List<Goal> g = Goal.list()

        render view:'home', model: [goals: g, topics: t]
    }


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

       redirect(action: "show", id: goalInstance.id)
    }
    // EXTERNAL: Ends here
}
