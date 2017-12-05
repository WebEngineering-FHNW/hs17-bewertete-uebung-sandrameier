package mvc

class GoalController {

    static scaffold = Goal

    // TODO: Change the name of this method to "index" as well as the views name & view reference
    // TODO: This overwrites the existing list view of all goals
    def home(Topic meinThema) {
        List<Topic> t = Topic.list()
        List<Goal> g = Goal.list()
        List<Goal> gbyt = Goal.findAllByGoalTopic(meinThema)

        render view:'home', model: [goals: g, topics: t, goalsByTopic: gbyt]
    }

    def addGoal(Goal g) {
        // save(g)
        println "bin in add Goal"
        println "argument ist Goal: $g"
        /*  g.goalDescription
          g.goalDeadline
          g.goalPriority
          g.goalReached
          g.goalTopic */
        render view:'goalView', model: [goalInstance: g]
    }


}
