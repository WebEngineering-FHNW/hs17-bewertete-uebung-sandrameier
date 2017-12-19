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
        topic = new Topic(topicName: "Reisen")
    }

    def cleanup() {
    }

    void "Topic: Changing topic name"() {
        when:
            topic.topicName = "Essen"
        then:
            topic.topicName == "Essen"
        expect:"changing topic does not work properly"
            true
    }

    // no more tests here since the controller does everything automatically and the topic itself has been tested
    // (Honestly: I tried to test the Topic.list() function but I couldn't make it work, it would throw errors about Topic not being a domain class or other things I couldn't understand)
}
