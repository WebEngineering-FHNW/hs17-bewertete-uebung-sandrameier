package mvc

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Topic)
class TopicSpec extends Specification {

    Topic topic

    def setup() {
    }

    def cleanup() {
    }

    void "Topic: toString() should give back name of topic"() {
        when:
            topic = new Topic(topicName: "Herausforderungen")
        then:
            topic.toString() == "Herausforderungen"
        expect:"toString method does not work properly"
            true
    }

}
