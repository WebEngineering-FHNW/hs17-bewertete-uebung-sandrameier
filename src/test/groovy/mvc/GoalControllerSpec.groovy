package mvc

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(GoalController)
class GoalControllerSpec extends Specification {

    Goal goal
    Topic topic
    Date d
    Topic topic2

    def setup() {
        topic = new Topic(topicName: "Reisen")
        goal = new Goal(goalDescription: "In Bali mit Schildkröten tauchen",
                        goalImage: "3",
                        goalDeadline: new Date().clearTime(),
                        goalPriority: 1,
                        goalReached: true,
                        goalTopic: topic)
    }

    def cleanup() {
    }

    void "Goal: Changing goal description"() {
        when:
            goal.goalDescription = "Neujahr in London verbringen"
        then:
            goal.goalDescription == "Neujahr in London verbringen"
        expect:"changing description does not work properly"
            true
    }

    void "Goal: Changing goal image"() {
        when:
            goal.goalImage = "10"
        then:
            goal.goalImage == "10"
        expect:"changing image does not work properly"
            true
    }

    void "Goal: Changing goal deadline"() {
        when:
            d = new Date().clearTime()
            goal.goalDeadline = d
        then:
            goal.goalDeadline == d
        expect:"changing deadline does not work properly"
            true
    }

    void "Goal: Changing goal priority"() {
        when:
            goal.goalPriority = 3
        then:
            goal.goalPriority == 3
        expect:"changing priority does not work properly"
            true
    }

    void "Goal: Changing goal reached state"() {
        when:
            goal.goalReached = false
        then:
            goal.goalReached == false
        expect:"changing reached state does not work properly"
            true
    }

    void "Goal: Changing goal topic"() {
        when:
            topic2 = new Topic(topicName: "Essen")
            goal.goalTopic = topic2
        then:
            goal.goalTopic == topic2
        expect:"changing reached state does not work properly"
            true
    }
}
