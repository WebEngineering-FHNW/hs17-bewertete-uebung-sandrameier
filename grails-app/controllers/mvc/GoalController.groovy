package mvc

class GoalController {

    // def index() { }

    static scaffold = Goal

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
