package mvc

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(TopicController)
class TopicControllerSpec extends Specification {

    Topic topic

    def setup() {
    }

    def cleanup() {
    }

    // no tests here since the controller does everything automatically and the topic itself has been tested
    // (Honestly: I tried to test the Topic.list() function but I couldn't make it work, it would throw errors about either Topic not being a domain class)
}
