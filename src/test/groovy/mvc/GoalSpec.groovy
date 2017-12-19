package mvc

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Goal)
class GoalSpec extends Specification {

    Goal goal

    def setup() {
    }

    def cleanup() {
    }

    void "Goal: toString() should give back description of goal"() {
        when:
            goal = new Goal(goalDescription: "Neujahr in London feiern", goalPriority: 3)
        then:
            goal.toString() == "Neujahr in London feiern"
        expect:"toString method does not work properly"
            true
    }

}
